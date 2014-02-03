component output="false"{

		public boolean function isCPF(any thisCPF) {
		
			var thisCPFdigitos = "";
			var thisDigit = 0;
			var thisCPFlen = 0;
			
			var somaDigitoUm = 0;
			var somaDigitoDois = 0;
			var digitoUm = 0;
			var digitoDois = 0;
			var i = 0;
			
			thisCPF = Replace(thisCPF, " ", "", "ALL");
			thisCPF = Replace(thisCPF, ".", "", "ALL");
			thisCPF = Replace(thisCPF, "-", "", "ALL");
		
			thisCPFlen = len(thisCPF);
			
			// Numérico, 11 dígitos e maior que zero (no caso 000.000.000-00)
			if (NOT (IsNumeric(thisCPF) AND thisCPFlen EQ 11 AND thisCPF GT 0))
				return false;
			
			// Separa o número e digitos verificadores	
			thisCPFdigitos = right(thisCPF, 2);
			thisCPF = left(thisCPF, 9);
			
			// Por exemplo 111.111.111-11, 222.222.222-22, etc.
			// O caso 000.000.000-00 é tratato em thisCPF GT 0, acima.
			// Só faz tal verificação se os dígitos forem maior que zero (não se pode dividir por zero)
			
			if (thisCPFdigitos AND int(thisCPF/thisCPFdigitos) EQ 10101010)
				return false;
				
			for(i=10; i GT 1; i=i-1) {
				thisDigit = mid(thisCPF, 11-i, 1);
				somaDigitoUm = somaDigitoUm + thisDigit * i;
			}
			digitoUm = somaDigitoUm * 10 MOD 11;
			if (digitoUm EQ 10)
				digitoUm = 0;
			
			
			thisCPF = thisCPF & digitoUm;
				
			for(i=11; i GT 1; i=i-1) {
				thisDigit = mid(thisCPF, 12-i, 1);
				somaDigitoDois = somaDigitoDois + thisDigit * i;
			}
			digitoDois = somaDigitoDois * 10 MOD 11;
			if (digitoDois EQ 10)
				digitoDois = 0;
				
			if (digitoUm & digitoDois EQ thisCPFdigitos)
				return true;
			else
				return false;
		}


		public boolean function isCNPJ(any thisCNPJ) {
		
			var thisCNPJdigitos = "";
			var thisDigit = 0;
			var thisCNPJlen = 0;
			var aMultipliers = ListToArray("5,4,3,2,9,8,7,6,5,4,3,2");
			
			var somaDigitoUm = 0;
			var somaDigitoDois = 0;
			var digitoUm = 0;
			var digitoDois = 0;
			var i = 0;
		
			thisCNPJ = Replace(thisCNPJ, " ", "", "ALL");
			thisCNPJ = Replace(thisCNPJ, ".", "", "ALL");
			thisCNPJ = Replace(thisCNPJ, "-", "", "ALL");
			thisCNPJ = Replace(thisCNPJ, "/", "", "ALL");
		
			thisCNPJlen = len(thisCNPJ);
			
			if (NOT (IsNumeric(thisCNPJ) AND thisCNPJlen EQ 14 AND thisCNPJ GT 0))
				return false;
			
			thisCNPJdigitos = right(thisCNPJ, 2);
			thisCNPJ = left(thisCNPJ, 12);
			
			for(i=1; i LTE 12; i=i+1) {
				thisDigit = mid(thisCNPJ, i, 1);
				somaDigitoUm = somaDigitoUm + thisDigit * aMultipliers[i];
			}
			digitoUm = somaDigitoUm * 10 MOD 11;
			if (digitoUm EQ 10)
				digitoUm = 0;
				
			ArrayInsertAt(aMultipliers, 1, 6);
			thisCNPJ = thisCNPJ & digitoUm;
				
			for(i=1; i LTE 13; i=i+1) {
				thisDigit = mid(thisCNPJ, i, 1);
				somaDigitoDois = somaDigitoDois + thisDigit * aMultipliers[i];
			}
			digitoDois = somaDigitoDois * 10 MOD 11;
			if (digitoDois EQ 10)
				digitoDois = 0;
			
			if (digitoUm & digitoDois EQ thisCNPJdigitos)
				return true;
			else
				return false;
			
		}


}