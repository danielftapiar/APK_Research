.class public Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisionResult"
.end annotation


# instance fields
.field public availableTimeSeconds:I

.field public availableUntilDate:Ljava/util/Date;

.field public result:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
