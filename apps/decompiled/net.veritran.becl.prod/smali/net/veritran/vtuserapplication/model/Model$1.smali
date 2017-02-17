.class final Lnet/veritran/vtuserapplication/model/Model$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:[Lnet/veritran/vtuserapplication/model/Model$a;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/model/Model;[Lnet/veritran/vtuserapplication/model/Model$a;)V
    .locals 0

    iput-object p2, p0, Lnet/veritran/vtuserapplication/model/Model$1;->a:[Lnet/veritran/vtuserapplication/model/Model$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model$1;->a:[Lnet/veritran/vtuserapplication/model/Model$a;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/Model$1;->a:[Lnet/veritran/vtuserapplication/model/Model$a;

    aget-object v2, v2, v0

    iget v3, v2, Lnet/veritran/vtuserapplication/model/Model$a;->a:I

    aget-object v3, p1, v3

    iget-object v4, v2, Lnet/veritran/vtuserapplication/model/Model$a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lnet/veritran/vtuserapplication/model/Model$a;->a:I

    aget-object v4, p2, v4

    iget-object v5, v2, Lnet/veritran/vtuserapplication/model/Model$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/veritran/vtuserapplication/model/Model$2;->a:[I

    iget-object v2, v2, Lnet/veritran/vtuserapplication/model/Model$a;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/Model$b;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v2, v1

    :goto_2
    if-eqz v2, :cond_1

    move v1, v2

    :cond_0
    return v1

    :pswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :pswitch_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v2, "Model"

    const-string v3, "Exception converting to float. Do nothing"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    :pswitch_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v2, "Model"

    const-string v3, "Exception converting to float. Do nothing"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lnet/veritran/vtuserapplication/model/Model$1;->a([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
