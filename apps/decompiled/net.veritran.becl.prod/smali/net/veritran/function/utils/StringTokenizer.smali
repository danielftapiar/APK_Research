.class public Lnet/veritran/function/utils/StringTokenizer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    iput-object p1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    const-string v0, " "

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    iput-object p1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    iput-object p1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/util/Vector;
    .locals 3

    iget-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public countTokens()I
    .locals 1

    invoke-direct {p0}, Lnet/veritran/function/utils/StringTokenizer;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    invoke-direct {p0}, Lnet/veritran/function/utils/StringTokenizer;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    invoke-direct {p0}, Lnet/veritran/function/utils/StringTokenizer;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lnet/veritran/function/utils/StringTokenizer;->a()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/veritran/function/utils/StringTokenizer;->a()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StringTokenizer [str="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/function/utils/StringTokenizer;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/function/utils/StringTokenizer;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
