public enum Color_02 {
	RED("红色"),GREEN("绿色"),BLUE("蓝色");
	private String name;

	public String getName(){
		return name;
	}

	public void setName(String name){
		this.name = name;
	}

	Color_02(String name){
		this.setName(name);
	}
}
