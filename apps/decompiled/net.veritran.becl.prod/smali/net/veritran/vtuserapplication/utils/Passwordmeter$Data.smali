.class public Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/utils/Passwordmeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public bonus:I

.field public count:I


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/utils/Passwordmeter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;->count:I

    iput p3, p0, Lnet/veritran/vtuserapplication/utils/Passwordmeter$Data;->bonus:I

    return-void
.end method
