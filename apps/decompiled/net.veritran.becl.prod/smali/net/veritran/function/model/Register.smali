.class public Lnet/veritran/function/model/Register;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_NONE:Lnet/veritran/function/model/Array;

.field public static final FORMAT_NONE:Ljava/lang/String; = "_"

.field public static final REGISTER_NONE:I


# instance fields
.field private a:C

.field private b:Ljava/lang/String;

.field private c:Lnet/veritran/function/model/Array;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/function/model/Register;->ARRAY_NONE:Lnet/veritran/function/model/Array;

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Lnet/veritran/function/model/Array;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lnet/veritran/function/model/Register;->a:C

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    sget-object v0, Lnet/veritran/function/model/Register;->ARRAY_NONE:Lnet/veritran/function/model/Array;

    iput-object v0, p0, Lnet/veritran/function/model/Register;->c:Lnet/veritran/function/model/Array;

    const-string v0, "_"

    iput-object v0, p0, Lnet/veritran/function/model/Register;->d:Ljava/lang/String;

    iput-char p1, p0, Lnet/veritran/function/model/Register;->a:C

    iput-object p2, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/function/model/Register;->c:Lnet/veritran/function/model/Array;

    iput-object p4, p0, Lnet/veritran/function/model/Register;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArray()Lnet/veritran/function/model/Array;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Register;->c:Lnet/veritran/function/model/Array;

    return-object v0
.end method

.method public getElementType()C
    .locals 1

    iget-char v0, p0, Lnet/veritran/function/model/Register;->a:C

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Register;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterIDasInt()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;

    const/4 v2, 0x0

    const-string v3, "P012"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Register#getRegisterIDasInt. Error convirtiendo el String ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] a Int. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lnet/veritran/function/exception/VTFunctionParserNumberFormatException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setArray(Lnet/veritran/function/model/Array;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/Register;->c:Lnet/veritran/function/model/Array;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register [elementType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lnet/veritran/function/model/Register;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registerID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Register;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Register;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Register;->c:Lnet/veritran/function/model/Array;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
