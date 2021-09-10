.class final synthetic Lcom/google/android/gms/common/stats/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/common/zzo;


# static fields
.field static final b:Lcom/google/android/gms/internal/common/zzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/e;->b:Lcom/google/android/gms/internal/common/zzo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/google/android/gms/common/stats/a;->e:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
