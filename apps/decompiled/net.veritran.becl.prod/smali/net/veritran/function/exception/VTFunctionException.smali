.class public Lnet/veritran/function/exception/VTFunctionException;
.super Ljava/lang/Exception;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->d:Ljava/lang/Exception;

    iput p1, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    iput-object p2, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/exception/VTFunctionException;->d:Ljava/lang/Exception;

    iput p1, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    iput-object p2, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/veritran/function/exception/VTFunctionException;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExeption()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/exception/VTFunctionException;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    return v0
.end method

.method protected setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/exception/VTFunctionException;->b:Ljava/lang/String;

    return-void
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/exception/VTFunctionException;->c:Ljava/lang/String;

    return-void
.end method

.method protected setExeption(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/exception/VTFunctionException;->d:Ljava/lang/Exception;

    return-void
.end method

.method protected setType(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/exception/VTFunctionException;->a:I

    return-void
.end method
