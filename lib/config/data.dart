class Planet {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;
  final String picture;

  const Planet({this.id, this.name, this.location, this.distance, this.gravity,
    this.description, this.image, this.picture});
}

List<Planet> planets = [
  const Planet(
    id: "1",
    name: "火星",
    location: "银河系",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "火星是太阳的第四颗行星，是太阳系中仅次于水星的第二小行星。 在英语中，火星有一个罗马战争之神的名字，通常被称为“红色星球”，因为其表面普遍存在的红色氧化铁使其呈现出红色的外观，这在赤裸裸的天文体中是独一无二的。 眼睛。 火星是一个具有稀薄大气层的地球行星，其表面特征让人联想到月球的撞击坑以及地球的山谷，沙漠和极地冰盖。",
    image: "assets/images/mars.png",
    picture: "https://all.img.s105.cn/kfupload/up/201902/26172842_2060.jpg"
  ),
  const Planet(
    id: "2",
    name: "海王星",
    location: "银河系",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "海王星是太阳系中第八个也是最远的太阳。 在太阳系中，它是直径第四大的行星，是第三大质量的行星，也是最密集的巨行星。 海王星的质量是地球质量的17倍，质量略高于近双胞胎天王星，它是地球质量的15倍，略大于海王星。 海王星每164.8年绕太阳运行一次，平均距离为30.1天文单位（4.50×109 km）。 它以罗马海神命名，具有天文符号♆，海王星神三叉戟的程式化版本！",
    image: "assets/images/neptune.png",
    picture: "https://all.img.s105.cn/kfupload/up/201902/26172943_3779.jpg"
  ),
  const Planet(
    id: "3",
    name: "月亮",
    location: "银河系",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "月球是绕地球运行的天文体，是地球上唯一的永久性自然卫星。 它是太阳系中第五大的自然卫星，也是行星卫星中相对于它绕其轨道运行的行星（其主要星球）的最大卫星。 在木星的卫星Io之后，月亮是密度为第二密度的卫星。",
    image: "assets/images/moon.png",
    picture: "https://all.img.s105.cn/kfupload/up/201902/26173453_9561.jpg"
  ),
  const Planet(
    id: "4",
    name: "地球",
    location: "银河系",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "地球是来自太阳的第三颗行星，是宇宙中唯一拥有生命的物体。 根据辐射定年和其他证据来源，地球形成于40亿年前。 地球的引力与太空中的其他物体相互作用，尤其是太阳和月球，这是地球上唯一的天然卫星。 地球围绕太阳旋转365.26天，这个时期被称为地球年。 在此期间，地球绕其轴旋转约366.26次。",
    image: "assets/images/earth.png",
    picture: "https://all.img.s105.cn/kfupload/up/201902/26173430_1904.jpg"
  ),
  const Planet(
    id: "5",
    name: "水星",
    location: "银河系",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "水星是太阳系中最小和最里面的行星。 其绕太阳88天的轨道周期是太阳系中所有行星中最短的。 它以罗马神灵水星命名，是神灵的使者。",
    image: "assets/images/mercury.png",
    picture: "https://all.img.s105.cn/kfupload/up/201902/26173333_4404.jpg"
  ),
];