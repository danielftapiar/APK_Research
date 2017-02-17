.class public Lnet/veritran/function/model/Dump;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_NONE:Ljava/lang/String;

.field public static final CLEAN:Z = true

.field public static final CLEAN_NONE:Z

.field public static final EVAL_NONE:Z

.field public static final INPUT_NONE:Ljava/lang/String;

.field public static final OUTPUT_NONE:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/function/model/Dump;->INPUT_NONE:Ljava/lang/String;

    sput-object v0, Lnet/veritran/function/model/Dump;->OUTPUT_NONE:Ljava/lang/String;

    sput-object v0, Lnet/veritran/function/model/Dump;->ARRAY_NONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/function/model/Dump;->c:Z

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/function/model/Dump;->f:Z

    iput-object p1, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/veritran/function/model/Dump;->c:Z

    iput-object p4, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    iput-object p5, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/function/model/Dump;->c:Z

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    iput-object v1, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/function/model/Dump;->f:Z

    iput-object p1, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lnet/veritran/function/model/Dump;->c:Z

    iput-object p4, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    iput-object p5, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lnet/veritran/function/model/Dump;->f:Z

    return-void
.end method


# virtual methods
.method public getArray()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isClean()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/function/model/Dump;->c:Z

    return v0
.end method

.method public isEval()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/function/model/Dump;->f:Z

    return v0
.end method

.method public setClean(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/veritran/function/model/Dump;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dump [input="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/function/model/Dump;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Dump;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/veritran/function/model/Dump;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Dump;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/model/Dump;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
