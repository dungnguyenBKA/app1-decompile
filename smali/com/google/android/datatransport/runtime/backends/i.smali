.class Lcom/google/android/datatransport/runtime/backends/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lmv;

.field private final c:Lmv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lmv;Lmv;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/i;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/i;->b:Lmv;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/i;->c:Lmv;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/i;->b:Lmv;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/i;->c:Lmv;

    .line 2
    new-instance v3, Lcom/google/android/datatransport/runtime/backends/c;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/backends/c;-><init>(Landroid/content/Context;Lmv;Lmv;Ljava/lang/String;)V

    return-object v3
.end method
