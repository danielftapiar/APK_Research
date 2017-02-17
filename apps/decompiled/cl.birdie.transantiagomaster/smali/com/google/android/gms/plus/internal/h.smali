.class public Lcom/google/android/gms/plus/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/j;


# instance fields
.field private final Uk:[Ljava/lang/String;

.field private final Ul:[Ljava/lang/String;

.field private final Um:[Ljava/lang/String;

.field private final Un:Ljava/lang/String;

.field private final Uo:Ljava/lang/String;

.field private final Up:Ljava/lang/String;

.field private final Uq:Ljava/lang/String;

.field private final Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final wG:Ljava/lang/String;

.field private final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/h;->CREATOR:Lcom/google/android/gms/plus/internal/j;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/h;->xH:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/h;->Uq:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/h;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/h;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/plus/internal/h;->xH:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/h;->xH:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Uq:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Uq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/h;->xH:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/h;->xH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Uq:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final iP()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    return-object v0
.end method

.method public final iQ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    return-object v0
.end method

.method public final iR()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    return-object v0
.end method

.method public final iS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    return-object v0
.end method

.method public final iT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    return-object v0
.end method

.method public final iU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    return-object v0
.end method

.method public final iV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Uq:Ljava/lang/String;

    return-object v0
.end method

.method public final iW()Lcom/google/android/gms/plus/internal/PlusCommonExtras;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/fo;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/h;->xH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->wG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Uk:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Ul:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Um:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Un:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Uo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Up:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/h;->Ur:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fo$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fo$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fo$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/h;Landroid/os/Parcel;I)V

    return-void
.end method
