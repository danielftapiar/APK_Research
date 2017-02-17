.class public Lnet/veritran/android/implementation/AndroidPersistenceImplementation;
.super Ljava/lang/Object;
.source "AndroidPersistenceImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;


# instance fields
.field h:Ljava/util/Hashtable;

.field keys:Ljava/util/Vector;

.field values:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidPersistenceImplementation;->h:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public dropKey(Ljava/util/Vector;)V
    .locals 0
    .param p1, "pKey"    # Ljava/util/Vector;

    .prologue
    .line 75
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "test"

    return-object v0
.end method

.method public getValue(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 6
    .param p1, "pKey"    # Ljava/util/Vector;

    .prologue
    .line 47
    const-string v1, ""

    .line 48
    .local v1, "sk":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v4, p0, Lnet/veritran/android/implementation/AndroidPersistenceImplementation;->h:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "sv":Ljava/lang/String;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 53
    .local v3, "v":Ljava/util/Vector;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    return-object v3
.end method

.method public putValue(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "pKey"    # Ljava/util/Vector;
    .param p2, "fieldValue"    # Ljava/util/Vector;

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, "sk":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_0
    const-string v2, ""

    .line 65
    .local v2, "sv":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 68
    :cond_1
    iget-object v3, p0, Lnet/veritran/android/implementation/AndroidPersistenceImplementation;->h:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public removeAll()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setDataFieldsType(Ljava/util/Vector;)V
    .locals 0
    .param p1, "fieldTypes"    # Ljava/util/Vector;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidPersistenceImplementation;->values:Ljava/util/Vector;

    .line 42
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public setPrimaryKeysType(Ljava/util/Vector;)V
    .locals 0
    .param p1, "pKeysType"    # Ljava/util/Vector;

    .prologue
    .line 35
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidPersistenceImplementation;->keys:Ljava/util/Vector;

    .line 36
    return-void
.end method
