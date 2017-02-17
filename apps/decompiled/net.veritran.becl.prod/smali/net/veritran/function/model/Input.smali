.class public Lnet/veritran/function/model/Input;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/model/Input;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    iput p1, p0, Lnet/veritran/function/model/Input;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/model/Input;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    iput p1, p0, Lnet/veritran/function/model/Input;->a:I

    iput-object p2, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRegisterId()I
    .locals 1

    iget v0, p0, Lnet/veritran/function/model/Input;->a:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isMemoryRegister()Z
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRegisterId(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/function/model/Input;->a:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/function/model/Input;->b:Ljava/lang/String;

    return-void
.end method
