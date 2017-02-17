.class public Lnet/veritran/vtuserapplication/core/elements/ImageAliasElement;
.super Lnet/veritran/vtuserapplication/core/elements/StorageElement;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/core/elements/StorageElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/core/elements/ImageAliasElement;->a:I

    return v0
.end method

.method public setAlias(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/core/elements/ImageAliasElement;->a:I

    return-void
.end method
