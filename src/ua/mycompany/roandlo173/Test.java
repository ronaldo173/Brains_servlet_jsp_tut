package ua.mycompany.roandlo173;

import javax.servlet.http.HttpServlet;

public class Test {
	public static void main(String[] args) {
		HttpServlet servlet = new XmlServlet();
		printSuperClass(servlet.getClass());

	}

	static void printSuperClass(Class<?> clas) {
		Class<?> superclass = clas.getSuperclass();
		if (superclass != null) {
			System.out.println("\t" + superclass);
			printSuperClass(superclass);
		}
	}
}
