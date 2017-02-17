.class public Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Product;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Product;->id:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Product;->description:Ljava/lang/String;

    return-void
.end method
