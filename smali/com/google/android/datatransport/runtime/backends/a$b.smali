.class final Lcom/google/android/datatransport/runtime/backends/a$b;
.super Lcom/google/android/datatransport/runtime/backends/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/backends/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Let;",
            ">;"
        }
    .end annotation
.end field

.field private b:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/runtime/backends/f;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/a$b;->a:Ljava/lang/Iterable;

    if-nez v0, :cond_0

    const-string v0, " events"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/a$b;->a:Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/a$b;->b:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/a;-><init>(Ljava/lang/Iterable;[BLcom/google/android/datatransport/runtime/backends/a$a;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Let;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/f$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/a$b;->a:Ljava/lang/Iterable;

    return-object p0
.end method

.method public c([B)Lcom/google/android/datatransport/runtime/backends/f$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/a$b;->b:[B

    return-object p0
.end method
