.class final Lcom/google/android/gms/measurement/internal/p8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/d;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p8;->a:Lcom/google/android/gms/common/util/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p8;->a:Lcom/google/android/gms/common/util/d;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/p8;->b:J

    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/p8;->b:J

    return-void
.end method

.method public final c()Z
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/p8;->b:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p8;->a:Lcom/google/android/gms/common/util/d;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/p8;->b:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
