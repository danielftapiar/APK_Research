.class public Lorg/osmdroid/util/ResourceProxyImpl;
.super Lorg/osmdroid/DefaultResourceProxyImpl;
.source "ResourceProxyImpl.java"


# instance fields
.field private final mResourceNameBase:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResourceNameBase:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "aType"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResourceNameBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 59
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 43
    const-string v1, "drawable"

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$bitmap;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/util/ResourceProxyImpl;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, "id":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$bitmap;

    .prologue
    .line 49
    const-string v1, "drawable"

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$bitmap;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/util/ResourceProxyImpl;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "id":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getDrawable(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;
    .locals 3
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$string;

    .prologue
    .line 31
    const-string v1, "string"

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$string;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/util/ResourceProxyImpl;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, "id":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;->getString(Lorg/osmdroid/ResourceProxy$string;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "pResId"    # Lorg/osmdroid/ResourceProxy$string;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 37
    const-string v1, "string"

    invoke-virtual {p1}, Lorg/osmdroid/ResourceProxy$string;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/util/ResourceProxyImpl;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "id":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/util/ResourceProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/DefaultResourceProxyImpl;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
