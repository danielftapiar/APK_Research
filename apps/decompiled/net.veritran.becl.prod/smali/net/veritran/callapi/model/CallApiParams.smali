.class public Lnet/veritran/callapi/model/CallApiParams;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/callapi/model/CallApiParams;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/callapi/model/CallApiParams;->a:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/callapi/model/CallApiParams;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public get(I)Lnet/veritran/function/model/Input;
    .locals 2

    iget-object v0, p0, Lnet/veritran/callapi/model/CallApiParams;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/function/model/Input;

    return-object v0
.end method

.method public put(ILnet/veritran/function/model/Input;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/callapi/model/CallApiParams;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
