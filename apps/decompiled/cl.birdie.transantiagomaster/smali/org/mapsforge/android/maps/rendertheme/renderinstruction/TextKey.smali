.class final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
.super Ljava/lang/Object;
.source "TextKey.java"


# static fields
.field private static final TEXT_KEY_ELEVATION:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

.field private static final TEXT_KEY_HOUSENUMBER:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

.field private static final TEXT_KEY_NAME:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

.field private static final TEXT_KEY_REF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    const-string v1, "ele"

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_ELEVATION:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 27
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    const-string v1, "addr:housenumber"

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_HOUSENUMBER:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 28
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_NAME:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 29
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    const-string v1, "ref"

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_REF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->key:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static getInstance(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "ele"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_ELEVATION:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v0, "addr:housenumber"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_HOUSENUMBER:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "name"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_NAME:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "ref"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->TEXT_KEY_REF:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    goto :goto_0

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final getValue(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 53
    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/core/Tag;

    iget-object v2, v2, Lorg/mapsforge/core/Tag;->value:Ljava/lang/String;

    .line 57
    :goto_1
    return-object v2

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
