.class final synthetic Lcom/google/android/gms/measurement/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/t2;


# static fields
.field static final a:Lcom/google/android/gms/measurement/internal/t2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->a:Lcom/google/android/gms/measurement/internal/t2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/v2;->b:Lcom/google/android/gms/measurement/internal/u2;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkz;->zzE()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
