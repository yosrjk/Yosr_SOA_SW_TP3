package java;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;






public class BanqueService {
	
	
	public double conversion(double mt) {
		return mt*10.6;
	}
	
	
	
	
	public Compte getCompte( int code) {
		return new Compte(code, Math.random()*55555, new Date());
	}
	
	
	
	
	public List<Compte> listComptes(){
		List<Compte> l = new ArrayList<Compte>();
		l.add(new Compte(1, Math.random()*55555, new Date()));
		l.add(new Compte(2, Math.random()*55555, new Date()));
		l.add(new Compte(3, Math.random()*55555, new Date()));
		return l;
	}

}
