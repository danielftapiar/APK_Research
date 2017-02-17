.class Lcom/vrem/wifianalyzer/c/d/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/net/wifi/ScanResult;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/net/wifi/ScanResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d/b;->a:Landroid/net/wifi/ScanResult;

    iput p2, p0, Lcom/vrem/wifianalyzer/c/d/b;->b:I

    return-void
.end method


# virtual methods
.method a()Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d/b;->a:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/d/b;->b:I

    return v0
.end method
