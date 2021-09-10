.class public Lcom/google/android/gms/common/internal/SignInButtonConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/SignInButtonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[Lcom/google/android/gms/common/api/Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->b:I

    .line 3
    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->c:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->d:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->e:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->b:I

    .line 8
    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->c:I

    .line 9
    iput p3, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->d:I

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->e:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    .line 3
    iget v1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->c:I

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    .line 5
    iget v2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->d:I

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->e:[Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
