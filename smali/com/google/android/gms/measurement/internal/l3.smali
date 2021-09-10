.class final Lcom/google/android/gms/measurement/internal/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/k3;

.field private final c:I

.field private final d:Ljava/lang/Throwable;

.field private final e:[B

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/k3;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l3;->b:Lcom/google/android/gms/measurement/internal/k3;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/l3;->c:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/l3;->d:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/l3;->e:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l3;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/l3;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l3;->b:Lcom/google/android/gms/measurement/internal/k3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l3;->f:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/l3;->c:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l3;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/l3;->e:[B

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/l3;->g:Ljava/util/Map;

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/k3;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
