.class public interface abstract Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;
.super Ljava/lang/Object;


# static fields
.field public static final PERSISTENCE_DATA_FIELD_TYPE_BINARY:I = 0x2

.field public static final PERSISTENCE_DATA_FIELD_TYPE_INT:I = 0x0

.field public static final PERSISTENCE_DATA_FIELD_TYPE_STRING:I = 0x1


# virtual methods
.method public abstract dropKey(Ljava/util/Vector;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/util/Vector;)Ljava/util/Vector;
.end method

.method public abstract putValue(Ljava/util/Vector;Ljava/util/Vector;)V
.end method

.method public abstract removeAll()V
.end method

.method public abstract setDataFieldsType(Ljava/util/Vector;)V
.end method

.method public abstract setKey(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryKeysType(Ljava/util/Vector;)V
.end method
