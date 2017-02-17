.class public Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;
.super Lnet/veritran/vtuserapplication/core/elements/StorageElement;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/core/elements/MessageBufferElement;->a:Ljava/lang/String;

    return-void
.end method
