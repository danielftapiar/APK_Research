.class public Lnet/veritran/vtuserapplication/ui/UIFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getUILibrary()Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    return-void
.end method

.method public constructor <init>(Lnet/veritran/vtuserapplication/ui/UILibraryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    return-void
.end method

.method public static buildImageFromArray([B)Lnet/veritran/vtuserapplication/ui/VTImageInterface;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    sget-object v1, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/ui/UILibraryInterface;->getDefaultImage()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/ui/UILibraryInterface;->buildImageFromArray([B)Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/ui/UILibraryInterface;->buildImageFromArray([B)Lnet/veritran/vtuserapplication/ui/VTImageInterface;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateCardImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/ui/UIFactory;->a:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lnet/veritran/vtuserapplication/ui/UILibraryInterface;->generateCardImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;F)V

    return-void
.end method
