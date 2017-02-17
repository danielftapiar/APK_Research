.class public Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$DigitizedCard;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitizedCard"
.end annotation


# instance fields
.field public AID:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public currencyCode:Ljava/lang/String;

.field public cvmType:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;",
            ">;"
        }
    .end annotation
.end field

.field public dcid:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public panSqKey:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public serviceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
