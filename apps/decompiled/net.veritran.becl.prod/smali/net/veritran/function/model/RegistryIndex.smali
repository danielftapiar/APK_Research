.class public Lnet/veritran/function/model/RegistryIndex;
.super Ljava/lang/Object;


# static fields
.field public static final PROTO_TYPE_CONSTANT:I = 0x3

.field public static final PROTO_TYPE_NEW:I = 0x1

.field public static final PROTO_TYPE_OLD:I = 0x2


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnet/veritran/function/model/RegistryIndex;->a:I

    iput v1, p0, Lnet/veritran/function/model/RegistryIndex;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/model/RegistryIndex;->c:Ljava/lang/String;

    iput v1, p0, Lnet/veritran/function/model/RegistryIndex;->d:I

    iput p2, p0, Lnet/veritran/function/model/RegistryIndex;->a:I

    iput p3, p0, Lnet/veritran/function/model/RegistryIndex;->b:I

    iput p4, p0, Lnet/veritran/function/model/RegistryIndex;->d:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/function/model/RegistryIndex;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/RegistryIndex;->a:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/RegistryIndex;->b:I

    return v0
.end method

.method public getProtocolType()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/RegistryIndex;->d:I

    return v0
.end method

.method public getRegister()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/RegistryIndex;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegistryIndex [beginIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/veritran/function/model/RegistryIndex;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/model/RegistryIndex;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", register="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/RegistryIndex;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/model/RegistryIndex;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
