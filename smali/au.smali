.class public final Lau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqt<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lmv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lmv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lau;->a:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lau;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmv;

    .line 2
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;

    invoke-direct {v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;-><init>()V

    .line 3
    sget-object v2, Lyr;->b:Lyr;

    .line 4
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    move-result-object v3

    const-wide/16 v4, 0x7530

    .line 5
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->b(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    const-wide/32 v4, 0x5265c00

    .line 6
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->d(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;->a(Lyr;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;

    sget-object v2, Lyr;->d:Lyr;

    .line 9
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 10
    invoke-virtual {v3, v6, v7}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->b(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    .line 11
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->d(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;->a(Lyr;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;

    sget-object v2, Lyr;->c:Lyr;

    .line 14
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->b(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    .line 16
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->d(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$c;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$c;->b:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$c;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$c;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$c;

    aput-object v6, v4, v5

    .line 17
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->c(Ljava/util/Set;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;

    .line 19
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a;->a()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;->a(Lyr;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$b;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;->c(Lmv;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g$a;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    move-result-object v0

    return-object v0
.end method
