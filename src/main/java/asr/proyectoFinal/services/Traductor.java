package asr.proyectoFinal.services; 

import com.google.gson.JsonArray; 
import com.google.gson.JsonObject; 
import com.google.gson.JsonParser; 
import com.ibm.watson.developer_cloud.language_translator.v2.LanguageTranslator; 
import com.ibm.watson.developer_cloud.language_translator.v2.util.Language; 
import com.ibm.watson.developer_cloud.language_translator.v2.model.TranslateOptions.Builder; 
import com.ibm.watson.developer_cloud.language_translator.v2.model.TranslateOptions; 
import com.ibm.watson.developer_cloud.language_translator.v2.model.TranslationResult; 
import com.ibm.watson.developer_cloud.language_translator.v2.model.IdentifyOptions;
import com.ibm.watson.developer_cloud.language_translator.v2.model.IdentifiedLanguages; 

public class Traductor { 
	
	public static String translate(String texto, String destLang) { 
		
		LanguageTranslator service = new LanguageTranslator(); 
		service.setUsernameAndPassword("4c38bd03-e8a7-456a-af9c-eabff7394d01", "4WdeUrrds6DE");
				
		String originLang = identify(texto, service);
		
		// Valores por defecto
		if (destLang.isEmpty()) {
			destLang = "es";
		}
		
		TranslateOptions translateOptions = new TranslateOptions.Builder() 
				.addText(texto) 
				.source(originLang)
				.target(destLang)
				.build();
		
		TranslationResult translationResult = 
				service.translate(translateOptions).execute();
		
		System.out.println(translationResult);
		String traduccionJSON = translationResult.toString(); 
		JsonParser parser = new JsonParser(); 
		JsonObject rootObj = parser.parse(traduccionJSON).getAsJsonObject(); 
		String wordCount = rootObj.get("word_count").getAsString();
		JsonArray traducciones = rootObj.getAsJsonArray("translations"); 
		String traduccionPrimera = texto; 
		
		if(traducciones.size()>0)
			traduccionPrimera = traducciones.get(0).getAsJsonObject().get("translation").getAsString(); 
		
		return traduccionPrimera;
	}
	
	public static String identify(String texto, LanguageTranslator service) {
		
		// Valor por defecto
		String originLang = "en";
		
		// Código para poder identificar el lenguaje.
		IdentifyOptions language = new IdentifyOptions.Builder()
				.text(texto)
				.build();
		
		IdentifiedLanguages identLangResult = service.identify(language)
				.execute();
				
		System.out.println(identLangResult);
		String languageJSON = identLangResult.toString(); 
		JsonParser parser = new JsonParser(); 
		JsonObject rootObj = parser.parse(languageJSON).getAsJsonObject(); 
		JsonArray languages = rootObj.getAsJsonArray("languages");
		
		if (languages.size()>0) {
			// Me quedo con el primero que es el que mayor nivel de confianza tiene
			originLang = languages.get(0).getAsJsonObject().get("language").getAsString();
		}
		
		return originLang;
	}
}