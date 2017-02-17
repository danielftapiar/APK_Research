.class public final Lcom/google/android/gms/internal/dx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dy;


# instance fields
.field public rq:Ljava/lang/String;

.field public rr:I

.field public rs:I

.field public rt:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dx;->CREATOR:Lcom/google/android/gms/internal/dy;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v3, 0x43eea0

    const/4 v1, 0x1

    const-string v2, "afma-sdk-a-v4452000.4452000.0"

    move-object v0, p0

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dx;-><init>(ILjava/lang/String;IIZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/dx;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/dx;->rq:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/dx;->rr:I

    iput p4, p0, Lcom/google/android/gms/internal/dx;->rs:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/dx;->rt:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/dy;->a$36eac3e2(Lcom/google/android/gms/internal/dx;Landroid/os/Parcel;)V

    return-void
.end method
