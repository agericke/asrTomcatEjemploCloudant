package asr.proyectoFinal.services;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.ibm.watson.developer_cloud.tone_analyzer.v3.ToneAnalyzer;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneAnalysis;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneOptions;

public class EmotionAnalysis {

	public static String analizarEmocion (String texto) { 
		
		ToneAnalyzer service = new ToneAnalyzer("2018-05-25");
		service.setUsernameAndPassword("fecc876b-7ecd-4076-98fc-e0f38b1e42b9", "7Xx7NiPhpTcG");
		ToneOptions toneOptions = new ToneOptions.Builder().text(texto).build();
		ToneAnalysis tone = service.tone(toneOptions).execute();
		
		System.out.println(tone);
		
		String tono="";
		try {
			tono = tone.getDocumentTone().getTones().get(0).getToneName().toString();
			System.out.print("La emoción es:");
			System.out.println(tono);
		} catch (Exception e) {
			tono = "Joy";
		}
		
		return tono;
	}
}
