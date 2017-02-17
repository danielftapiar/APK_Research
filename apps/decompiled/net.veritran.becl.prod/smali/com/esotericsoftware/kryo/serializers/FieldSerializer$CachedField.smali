.class public abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.super Ljava/lang/Object;
.source "FieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field access:Lcom/esotericsoftware/reflectasm/FieldAccess;

.field accessIndex:I

.field canBeNull:Z

.field field:Ljava/lang/reflect/Field;

.field offset:J

.field serializer:Lcom/esotericsoftware/kryo/Serializer;

.field valueClass:Ljava/lang/Class;

.field varIntsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 644
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->accessIndex:I

    .line 651
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->offset:J

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varIntsEnabled:Z

    return-void
.end method


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 682
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    .prologue
    .line 674
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
.end method

.method public setCanBeNull(Z)V
    .locals 0
    .param p1, "canBeNull"    # Z

    .prologue
    .line 678
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 679
    return-void
.end method

.method public setClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "valueClass"    # Ljava/lang/Class;

    .prologue
    .line 658
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 660
    return-void
.end method

.method public setClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "valueClass"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 665
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 666
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 667
    return-void
.end method

.method public setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 670
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 671
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField<TX;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end method
