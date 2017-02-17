.class public Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;
.super Ljava/lang/Object;
.source "EnumPersistor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/lang/EnumPersistor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;:",
        "Lde/viktorreiser/toolbox/lang/EnumPersistor",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;, "Lde/viktorreiser/toolbox/lang/EnumPersistor<TT;>.ReverseMap<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;->mMap:Ljava/util/Map;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    aget-object v0, v1, v3

    .line 58
    .local v0, "v":Ljava/lang/Enum;, "TT;"
    iget-object v5, p0, Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;->mMap:Ljava/util/Map;

    move-object v2, v0

    check-cast v2, Lde/viktorreiser/toolbox/lang/EnumPersistor;

    invoke-interface {v2}, Lde/viktorreiser/toolbox/lang/EnumPersistor;->getPersistId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Enum;
    .locals 2
    .param p1, "persistId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;, "Lde/viktorreiser/toolbox/lang/EnumPersistor<TT;>.ReverseMap<TT;>;"
    iget-object v0, p0, Lde/viktorreiser/toolbox/lang/EnumPersistor$ReverseMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method
