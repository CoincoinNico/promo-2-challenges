class Person
  def initialize(zboub, size)
    @zboub = zboub
    @size = size
  end

  def display_zboub
    "Mon zboub, #{@zboub}, de #{@size} km, ressemble à ça : 8====>"
  end
end

var Person = function(zboub, size) {
  this.zboub = zboub;
  this.size = size;
};

Person.prototype.display_zboub = function() {
  return "Mon zboub," + this.zboub + " de " + this.size + "km, ressemble à ça : 8====>";
};

var seb = new Person("HelloKitty", 2);


// Commentaire sur une ligne

Array
String
Hash = Object
Number
true
false
Function

/* Déclarer une fonction */
function maFunction(string) {

};

var a = 1;

var maFunction = function() {

};

maFunction();

/* Commentaire sur plusieurs lignes
   Hello
   World
*/

