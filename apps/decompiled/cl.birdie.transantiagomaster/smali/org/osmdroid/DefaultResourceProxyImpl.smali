.class public Lorg/osmdroid/DefaultResourceProxyImpl;
.super Ljava/lang/Object;
.source "DefaultResourceProxyImpl.java"

# interfaces
.implements Lorg/osmdroid/ResourceProxy;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 38
    :cond_0
    return-void
.end method

.method private getBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 135
    :try_start_0
    const-class v6, Landroid/util/DisplayMetrics;

    const-string v7, "DENSITY_DEFAULT"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    .local v0, "density":Ljava/lang/reflect/Field;
    const-class v6, Landroid/graphics/BitmapFactory$Options;

    const-string v7, "inDensity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 137
    .local v1, "inDensity":Ljava/lang/reflect/Field;
    const-class v6, Landroid/graphics/BitmapFactory$Options;

    const-string v7, "inTargetDensity"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 139
    .local v2, "inTargetDensity":Ljava/lang/reflect/Field;
    const-class v6, Landroid/util/DisplayMetrics;

    const-string v7, "densityDpi"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 140
    .local v4, "targetDensity":Ljava/lang/reflect/Field;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 142
    iget-object v6, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "density":Ljava/lang/reflect/Field;
    .end local v1    # "inDensity":Ljava/lang/reflect/Field;
    .end local v2    # "inTargetDensity":Ljava/lang/reflect/Field;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "targetDensity":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    :catch_0
    move-exception v6

    :goto_1
    move-object v3, v5

    goto :goto_0

    .line 148
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public final getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
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

    .line 108
    .local v3, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 109
    if-nez v1, :cond_1

    .line 110
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Resource not found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v3    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v4, Lorg/osmdroid/DefaultResourceProxyImpl;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OutOfMemoryError getting bitmap resource: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 122
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    :cond_0
    :goto_0
    throw v4

    .line 112
    .restart local v3    # "resName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 113
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_3
    iget-object v4, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v4, :cond_2

    .line 114
    invoke-direct {p0}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 116
    :cond_2
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 124
    if-eqz v1, :cond_3

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 128
    :cond_3
    :goto_1
    return-object v4

    :catch_1
    move-exception v5

    goto :goto_1

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "resName":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public final getDisplayMetricsDensity()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/osmdroid/DefaultResourceProxyImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public final getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
