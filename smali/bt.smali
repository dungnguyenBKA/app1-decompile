.class final Lbt;
.super Lnt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbt$b;
    }
.end annotation


# instance fields
.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljavax/inject/Provider;

.field private e:Ljavax/inject/Provider;

.field private f:Ljavax/inject/Provider;

.field private g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcv;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lxt;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lmt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lbt$a;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lnt;-><init>()V

    .line 2
    invoke-static {}, Lft$a;->a()Lft;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lpt;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lbt;->b:Ljavax/inject/Provider;

    .line 4
    invoke-static {p1}, Lrt;->a(Ljava/lang/Object;)Lqt;

    move-result-object p1

    iput-object p1, p0, Lbt;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {}, Lnv;->a()Lnv;

    move-result-object p2

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/datatransport/runtime/backends/j;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/datatransport/runtime/backends/j;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 7
    iput-object v1, p0, Lbt;->d:Ljavax/inject/Provider;

    .line 8
    iget-object p1, p0, Lbt;->c:Ljavax/inject/Provider;

    .line 9
    new-instance p2, Lcom/google/android/datatransport/runtime/backends/l;

    invoke-direct {p2, p1, v1}, Lcom/google/android/datatransport/runtime/backends/l;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 10
    invoke-static {p2}, Lpt;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbt;->e:Ljavax/inject/Provider;

    .line 11
    iget-object p1, p0, Lbt;->c:Ljavax/inject/Provider;

    invoke-static {}, Lgu;->a()Lgu;

    move-result-object p2

    invoke-static {}, Lhu;->a()Lhu;

    move-result-object v0

    .line 12
    new-instance v1, Ljv;

    invoke-direct {v1, p1, p2, v0}, Ljv;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 13
    iput-object v1, p0, Lbt;->f:Ljavax/inject/Provider;

    .line 14
    invoke-static {}, Lnv;->a()Lnv;

    move-result-object p1

    invoke-static {}, Lov;->a()Lov;

    move-result-object p2

    invoke-static {}, Liu;->a()Liu;

    move-result-object v0

    iget-object v1, p0, Lbt;->f:Ljavax/inject/Provider;

    .line 15
    new-instance v2, Ldv;

    invoke-direct {v2, p1, p2, v0, v1}, Ldv;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 16
    invoke-static {v2}, Lpt;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbt;->g:Ljavax/inject/Provider;

    .line 17
    invoke-static {}, Lnv;->a()Lnv;

    move-result-object p1

    .line 18
    new-instance p2, Lau;

    invoke-direct {p2, p1}, Lau;-><init>(Ljavax/inject/Provider;)V

    .line 19
    iput-object p2, p0, Lbt;->h:Ljavax/inject/Provider;

    .line 20
    iget-object p1, p0, Lbt;->c:Ljavax/inject/Provider;

    iget-object v0, p0, Lbt;->g:Ljavax/inject/Provider;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    .line 21
    new-instance v8, Lbu;

    invoke-direct {v8, p1, v0, p2, v1}, Lbu;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 22
    iput-object v8, p0, Lbt;->i:Ljavax/inject/Provider;

    .line 23
    iget-object p1, p0, Lbt;->b:Ljavax/inject/Provider;

    iget-object p2, p0, Lbt;->e:Ljavax/inject/Provider;

    iget-object v0, p0, Lbt;->g:Ljavax/inject/Provider;

    .line 24
    new-instance v1, Lyt;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    move-object v6, v0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lyt;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 25
    iput-object v1, p0, Lbt;->j:Ljavax/inject/Provider;

    .line 26
    iget-object v3, p0, Lbt;->c:Ljavax/inject/Provider;

    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v9

    .line 27
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;

    move-object v2, v1

    move-object v5, v0

    move-object v6, v8

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/n;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 28
    iput-object v1, p0, Lbt;->k:Ljavax/inject/Provider;

    .line 29
    iget-object p1, p0, Lbt;->b:Ljavax/inject/Provider;

    iget-object p2, p0, Lbt;->g:Ljavax/inject/Provider;

    iget-object v0, p0, Lbt;->i:Ljavax/inject/Provider;

    .line 30
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    invoke-direct {v1, p1, p2, v0, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 31
    iput-object v1, p0, Lbt;->l:Ljavax/inject/Provider;

    .line 32
    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v3

    invoke-static {}, Lov;->a()Lov;

    move-result-object v4

    iget-object v5, p0, Lbt;->j:Ljavax/inject/Provider;

    iget-object v6, p0, Lbt;->k:Ljavax/inject/Provider;

    iget-object v7, p0, Lbt;->l:Ljavax/inject/Provider;

    .line 33
    new-instance p1, Lot;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lot;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 34
    invoke-static {p1}, Lpt;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbt;->m:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method j()Leu;
    .locals 1

    .line 1
    iget-object v0, p0, Lbt;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu;

    return-object v0
.end method

.method o()Lmt;
    .locals 1

    .line 1
    iget-object v0, p0, Lbt;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmt;

    return-object v0
.end method
