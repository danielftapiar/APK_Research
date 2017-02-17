.class public Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$VTProvisionResult;
.super Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTProvisionResult"
.end annotation


# instance fields
.field public CVV:Ljava/lang/String;

.field public cardExpirationDateMMYY:Ljava/lang/String;

.field public cardNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResult;-><init>()V

    return-void
.end method
