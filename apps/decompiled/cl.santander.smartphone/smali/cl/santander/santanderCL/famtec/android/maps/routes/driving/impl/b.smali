.class final Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Lcom/google/android/maps/GeoPoint;

.field private final b:Lcom/google/android/maps/GeoPoint;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;


# direct methods
.method public constructor <init>(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a:Lcom/google/android/maps/GeoPoint;

    iput-object p3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->b:Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;
    .locals 13

    const-wide v11, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;

    invoke-direct {v4}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_0

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Ruta"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setInstructions(Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "description"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v2, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&#160;"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setDistance(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Point"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v2, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/maps/GeoPoint;

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v8, v11

    double-to-int v8, v8

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-int v6, v9

    invoke-direct {v7, v8, v6}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v4, v7}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setLocation(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "address"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iget-boolean v7, v7, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->a:Z

    if-nez v7, :cond_6

    invoke-virtual {v4, v6}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setAddressOrigin(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setAddressDestiny(Ljava/lang/String;)V

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iput-boolean v3, v6, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->a:Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4, v6}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setAddressDestiny(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;->setAddressOrigin(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private a(Ljava/io/InputStream;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    .locals 4

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Placemark"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a(Lorg/w3c/dom/NodeList;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->setPlacemarks(Ljava/util/List;)V

    return-object v0

    :cond_0
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a(Lorg/w3c/dom/Node;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/PlacemarkImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lorg/w3c/dom/NodeList;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    .locals 16

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v5, v2, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v2, v6, :cond_1

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_1
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Ruta"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v4, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    invoke-direct {v4}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;-><init>()V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "description"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&#160;"

    const-string v7, " "

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->setTotalDistance(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "GeometryCollection"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v2, "</coordinates>"

    const-string v7, ""

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v2, "<coordinates>"

    const-string v7, ""

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v2, "</LineString>"

    const-string v7, ""

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v2, "<LineString>"

    const-string v7, ""

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    array-length v2, v7

    const/16 v9, 0xc8

    if-le v2, v9, :cond_5

    array-length v2, v7

    const/16 v9, 0x1f4

    if-ge v2, v9, :cond_5

    const/4 v1, 0x2

    :cond_4
    :goto_5
    const/4 v2, 0x0

    :goto_6
    array-length v9, v7

    if-lt v2, v9, :cond_7

    invoke-virtual {v4, v8}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;->setGeoPoints(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    array-length v2, v7

    const/16 v9, 0x1f4

    if-lt v2, v9, :cond_6

    array-length v2, v7

    const/16 v9, 0x7d0

    if-ge v2, v9, :cond_6

    const/4 v1, 0x3

    goto :goto_5

    :cond_6
    array-length v2, v7

    const/16 v9, 0x7d0

    if-lt v2, v9, :cond_4

    const/4 v1, 0x5

    goto :goto_5

    :cond_7
    aget-object v9, v7, v2

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/android/maps/GeoPoint;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide v13, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v11, v13

    double-to-int v11, v11

    const/4 v12, 0x0

    aget-object v9, v9, v12

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v12, v14

    double-to-int v9, v12

    invoke-direct {v10, v11, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    goto :goto_6

    :cond_8
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private varargs a([Ljava/lang/Integer;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    .locals 7

    const/4 v6, 0x1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/maps?f=d&hl=es&saddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&daddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->b:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&oe=utf8&0&om=0&output=kml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "&dirflg=w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v2, ",0.000000"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v3, "<GeometryCollection>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    const-string v4, "</GeometryCollection>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a(Ljava/io/InputStream;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->a([Ljava/lang/Integer;)Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/RouteImpl;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    invoke-static {v0, p1}, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->a(Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;Lcl/santander/santanderCL/famtec/android/maps/routes/driving/Route;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "Calculating..."

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/b;->d:Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/routes/driving/impl/DrivingDirectionsGoogleKML;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method
