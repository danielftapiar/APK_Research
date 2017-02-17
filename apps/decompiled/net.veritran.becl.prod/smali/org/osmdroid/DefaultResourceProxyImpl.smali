.class public Lorg/osmdroid/DefaultResourceProxyImpl;
.super Ljava/lang/Object;
.source "DefaultResourceProxyImpl.java"

# interfaces
.implements Lorg/osmdroid/ResourceProxy;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/DefaultResourceProxyImpl$1;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/DefaultResourceProxyImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    .line 41
    iget-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 46
    :cond_0
    return-void
.end method

.method private getBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 140
    :try_start_0
    const-class v6, Landroid/util/DisplayMetrics;

    const-string v7, "DENSITY_DEFAULT"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 141
    .local v0, "density":Ljava/lang/reflect/Field;
    const-class v6, Landroid/graphics/BitmapFactory$Options;

    const-string v7, "inDensity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    .local v1, "inDensity":Ljava/lang/reflect/Field;
    const-class v6, Landroid/graphics/BitmapFactory$Options;

    const-string v7, "inTargetDensity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 144
    .local v2, "inTargetDensity":Ljava/lang/reflect/Field;
    const-class v6, Landroid/util/DisplayMetrics;

    const-string v7, "densityDpi"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 145
    .local v4, "targetDensity":Ljava/lang/reflect/Field;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 147
    iget-object v6, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "density":Ljava/lang/reflect/Field;
    .end local v1    # "inDensity":Ljava/lang/reflect/Field;
    .end local v2    # "inTargetDensity":Ljava/lang/reflect/Field;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "targetDensity":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v6

    :goto_1
    move-object v3, v5

    .line 154
    goto :goto_0

    .line 149
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$bitmap;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "resName":Ljava/lang/String;
    const-class v4, Lorg/osmdroid/ResourceProxy;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v4, Lorg/osmdroid/DefaultResourceProxyImpl;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutOfMemoryError getting bitmap resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 126
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 130
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    :cond_0
    :goto_0
    throw v4

    .line 116
    .restart local v3    # "resName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 117
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_3
    iget-object v4, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v4, :cond_2

    .line 118
    invoke-direct {p0}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 120
    :cond_2
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 128
    if-eqz v1, :cond_3

    .line 130
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    :cond_3
    :goto_1
    return-object v4

    .line 131
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "resName":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public getDisplayMetricsDensity()F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;
    .locals 2
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$string;

    .prologue
    .line 50
    sget-object v0, Lorg/osmdroid/DefaultResourceProxyImpl$1;->$SwitchMap$org$osmdroid$ResourceProxy$string:[I

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$string;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :pswitch_0
    const-string v0, "Mapnik"

    .line 96
    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    const-string v0, "Cycle Map"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "Public transport"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "CloudMade (Standard tiles)"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "CloudMade (small tiles)"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "Mapquest"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "Mapquest Aerial"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "Bing"

    goto :goto_0

    .line 68
    :pswitch_8
    const-string v0, "MapBox"

    goto :goto_0

    .line 70
    :pswitch_9
    const-string v0, "OpenFietsKaart overlay"

    goto :goto_0

    .line 72
    :pswitch_a
    const-string v0, "Netherlands base overlay"

    goto :goto_0

    .line 74
    :pswitch_b
    const-string v0, "Netherlands roads overlay"

    goto :goto_0

    .line 76
    :pswitch_c
    const-string v0, "Unknown"

    goto :goto_0

    .line 78
    :pswitch_d
    const-string v0, "%s m"

    goto :goto_0

    .line 80
    :pswitch_e
    const-string v0, "%s km"

    goto :goto_0

    .line 82
    :pswitch_f
    const-string v0, "%s mi"

    goto :goto_0

    .line 84
    :pswitch_10
    const-string v0, "%s nm"

    goto :goto_0

    .line 86
    :pswitch_11
    const-string v0, "%s ft"

    goto :goto_0

    .line 88
    :pswitch_12
    const-string v0, "Online mode"

    goto :goto_0

    .line 90
    :pswitch_13
    const-string v0, "Offline mode"

    goto :goto_0

    .line 92
    :pswitch_14
    const-string v0, "My location"

    goto :goto_0

    .line 94
    :pswitch_15
    const-string v0, "Compass"

    goto :goto_0

    .line 96
    :pswitch_16
    const-string v0, "Map mode"

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public varargs getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$string;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
