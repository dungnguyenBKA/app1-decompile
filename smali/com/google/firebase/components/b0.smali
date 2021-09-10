.class Lcom/google/firebase/components/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld50<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lc50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc50<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ld50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld50<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic e:I


# instance fields
.field private a:Lc50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc50<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Ld50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld50<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/components/z;->a()Lc50;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/b0;->c:Lc50;

    .line 2
    invoke-static {}, Lcom/google/firebase/components/a0;->a()Ld50;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/b0;->d:Ld50;

    return-void
.end method

.method private constructor <init>(Lc50;Ld50;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc50<",
            "TT;>;",
            "Ld50<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/components/b0;->a:Lc50;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/components/b0;->b:Ld50;

    return-void
.end method

.method static a()Lcom/google/firebase/components/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/b0;

    sget-object v1, Lcom/google/firebase/components/b0;->c:Lc50;

    sget-object v2, Lcom/google/firebase/components/b0;->d:Ld50;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/b0;-><init>(Lc50;Ld50;)V

    return-object v0
.end method


# virtual methods
.method b(Ld50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld50<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/b0;->b:Ld50;

    sget-object v1, Lcom/google/firebase/components/b0;->d:Ld50;

    if-ne v0, v1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/b0;->a:Lc50;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/firebase/components/b0;->a:Lc50;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/components/b0;->b:Ld50;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    check-cast v0, Lcom/google/firebase/components/z;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/b0;->b:Ld50;

    invoke-interface {v0}, Ld50;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
