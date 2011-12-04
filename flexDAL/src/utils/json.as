// ActionScript file
import com.adobe.serialization.json.JSON;

public function JSONToArrayCollection(rawData:String):ArrayCollection {
	var arr:Array = (JSON.decode(rawData) as Array);
	var collection:ArrayCollection;
	
	try {
		collection = new ArrayCollection(arr);
	}
	catch (err: *) {
		return null;
	}
	
	return (collection);
}

public function validarJSON(rawData:String):Boolean {
	// Validar JSON (quick)
	if (rawData.search(/{/) == -1) {
		return false;
	}
	else {
		return true;
	}
}