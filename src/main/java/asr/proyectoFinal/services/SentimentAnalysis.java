package asr.proyectoFinal.services;


import com.google.gson.JsonArray; 
import com.google.gson.JsonObject; 
import com.google.gson.JsonParser; 
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.*;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalysisResults;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.AnalyzeOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.EntitiesOptions;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.Features;
import com.ibm.watson.developer_cloud.natural_language_understanding.v1.model.KeywordsOptions;

public class SentimentAnalysis {

	public static String analizarSentimiento (String texto) { 
					
		NaturalLanguageUnderstanding service = new NaturalLanguageUnderstanding(
				  "2018-03-16",
				  "30560c2a-1c08-44ff-9a88-54bbea4eff8e",
  				  "5C1J8pb5UnxH"
				);
		
		EntitiesOptions entitiesOptions = new EntitiesOptions.Builder()
		  .sentiment(true)
		  .limit(2)
		  .build();

		KeywordsOptions keywordsOptions = new KeywordsOptions.Builder()
		  .sentiment(true)
		  .limit(2)
		  .build();

		Features features = new Features.Builder()
		  .entities(entitiesOptions)
		  .keywords(keywordsOptions)
		  .build();

		AnalyzeOptions parameters = new AnalyzeOptions.Builder()
		  .text(texto)
		  .features(features)
		  .build();

		AnalysisResults response = service
		  .analyze(parameters)
		  .execute();
		
		System.out.println(response);
		
		String analisisJSON = response.toString(); 
		//System.out.println(analisisJSON);
		
		JsonParser parser = new JsonParser(); 
		JsonObject rootObj = parser.parse(analisisJSON).getAsJsonObject(); 
		String idioma = rootObj.get("language").getAsString();
		
		//System.out.println("El idioma es:");
		//System.out.println(idioma);
		String sentimiento = "";
		//System.out.println(idioma.equals("en"));
		
		if (!idioma.equals("en")) {
			sentimiento = "Neutral";
		} else {
			
			try {
				
				JsonArray sentimientos = rootObj.getAsJsonArray("keywords");
				
//				System.out.println(sentimientos.toString());
//				System.out.println(sentimientos.get(0));
				sentimiento = sentimientos.get(0).getAsJsonObject().get("sentiment").getAsJsonObject().get("score").getAsString();
//				System.out.println(sentimientos.toString());
				double sentimientoNum = Double.parseDouble(sentimiento);
//				System.out.println(String.format("El sentimiento obtenido es: %s", sentimiento));
//				System.out.println(String.format("El sentimiento en numero es: %f", sentimientoNum));
//				System.out.println(sentimientoNum);
				if (sentimientoNum > 0.4) {
					sentimiento = "Positive";
				} else if (sentimientoNum > 0.2) {
					sentimiento = "Neutral";
				} else {
					sentimiento = "Negative";
				}
				
			}
			catch (Exception exception) {
				sentimiento = "Neutral";
			}
		}
		
		//System.out.println(sentimiento);
		
		return sentimiento;
		
	}
}

