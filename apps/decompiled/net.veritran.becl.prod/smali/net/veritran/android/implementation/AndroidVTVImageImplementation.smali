.class public Lnet/veritran/android/implementation/AndroidVTVImageImplementation;
.super Ljava/lang/Object;
.source "AndroidVTVImageImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/ui/components/VTVImageInterface;


# instance fields
.field image:Lnet/veritran/vtuserapplication/ui/VTImageInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Lnet/veritran/vtuserapplication/ui/VTImageInterface;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidVTVImageImplementation;->image:Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    return-object v0
.end method

.method public setContent(Lnet/veritran/vtuserapplication/ui/VTImageInterface;)V
    .locals 0
    .param p1, "img"    # Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lnet/veritran/android/implementation/AndroidVTVImageImplementation;->setImage(Lnet/veritran/vtuserapplication/ui/VTImageInterface;)V

    .line 28
    return-void
.end method

.method public setImage(Lnet/veritran/vtuserapplication/ui/VTImageInterface;)V
    .locals 0
    .param p1, "img"    # Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    .prologue
    .line 21
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidVTVImageImplementation;->image:Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    .line 22
    return-void
.end method
