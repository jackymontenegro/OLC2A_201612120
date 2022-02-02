/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab2;

import java.io.FileInputStream;

/**
 *
 * @author jacky
 */
public class Lab2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        interpretar("entrada.txt");        
        
    }
   private static void interpretar(String path) {
        fuentes.parser parse;
        try {
            parse = new fuentes.parser(new fuentes.scanner(new FileInputStream(path)));
            parse.parse();
        } catch(Exception e) {
            System.out.println("Error fatal en compilación de entrada.");
            System.out.println("Causa: "+e.getCause());
        }
    }
    
}
