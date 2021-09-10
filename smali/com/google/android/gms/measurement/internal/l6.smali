.class public final Lcom/google/android/gms/measurement/internal/l6;
.super Lcom/google/android/gms/measurement/internal/y3;
.source "SourceFile"


# instance fields
.field protected c:Lcom/google/android/gms/measurement/internal/k6;

.field private d:Lcom/google/android/gms/measurement/internal/j5;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/internal/k5;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private i:Lcom/google/android/gms/measurement/internal/f;

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private l:J

.field private m:I

.field final n:Lcom/google/android/gms/measurement/internal/n9;

.field protected o:Z

.field private final p:Lcom/google/android/gms/measurement/internal/g9;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/j4;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/l6;->o:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/a6;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/l6;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/measurement/internal/f;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->i:Lcom/google/android/gms/measurement/internal/f;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/measurement/internal/l6;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/l6;->l:J

    iput v0, p0, Lcom/google/android/gms/measurement/internal/l6;->m:I

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/google/android/gms/measurement/internal/n9;

    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/n9;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->n:Lcom/google/android/gms/measurement/internal/n9;

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/measurement/internal/l6;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/l6;->K(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;IJZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/l6;->l:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/l6;->m:I

    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/f;->m(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/v3;->r(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/l6;->l:J

    iput p2, p0, Lcom/google/android/gms/measurement/internal/l6;->m:I

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/measurement/internal/z7;->I(Z)V

    if-eqz p6, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/z7;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic J(Lcom/google/android/gms/measurement/internal/l6;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/l6;->L()V

    return-void
.end method

.method private final K(Ljava/lang/Boolean;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/v3;->p(Ljava/lang/Boolean;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p2

    .line 21
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->m()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 24
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/l6;->L()V

    return-void
.end method

.method private final L()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->r:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    const-string v3, "unset"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v8

    const-string v5, "app"

    const-string v6, "_npa"

    move-object v4, p0

    .line 7
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    const-string v4, "true"

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x1

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v9

    const-string v6, "app"

    const-string v7, "_npa"

    move-object v5, p0

    .line 11
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/l6;->o:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v3, "Recording app launch after enabling measurement for the first time (FE)"

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l6;->t()V

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlx;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 20
    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->p0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n8;->a()V

    .line 23
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->s0:Lcom/google/android/gms/measurement/internal/u2;

    .line 25
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->B()Lcom/google/android/gms/measurement/internal/z3;

    move-result-object v0

    const-string v3, "null reference"

    .line 27
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/v3;->k:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gtz v5, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z3;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/p5;

    .line 33
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/l6;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->H()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 4
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 6
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 7
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 8
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/v5;

    .line 10
    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/v5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    .line 8
    invoke-static {}, Lcom/google/android/gms/measurement/internal/u9;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/y5;

    invoke-direct {v7, p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/y5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    const-string v6, "get conditional user properties"

    move-object v3, v0

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/g4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Timed out waiting for get conditional user properties"

    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/h9;->W(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/u9;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/z5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/z5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    move-object v0, v7

    move-object v1, v6

    move-object v5, v8

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/g4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    .line 17
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 18
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_2
    new-instance p2, Lx;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Lx;-><init>(I)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzkg;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkg;->o()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzkg;->c:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z6;->v()Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r6;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z6;->v()Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r6;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->J()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->B0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "google_app_id"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->N()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :try_start_2
    new-instance v3, Lcom/google/android/gms/common/internal/p;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    return-object v0

    :catch_1
    move-exception v1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    const-string v3, "getGoogleAppId failed with exception"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic G(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/r3;->b(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r3;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/h9;->o0(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const/4 v7, 0x0

    const/16 v8, 0x1b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "Invalid default event parameter type. Name, value"

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/h9;->E(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    const/16 v5, 0x64

    const-string v6, "param"

    invoke-virtual {v4, v6, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/h9;->p0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/h9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->k()I

    move-result p1

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-gt v1, p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    if-le v2, p1, :cond_8

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/r3;->b(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z7;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final N(Landroid/os/Bundle;IJ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/l6;->O(Lcom/google/android/gms/measurement/internal/f;IJ)V

    :cond_1
    return-void
.end method

.method public final O(Lcom/google/android/gms/measurement/internal/f;IJ)V
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->x0:Lcom/google/android/gms/measurement/internal/u2;

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_1

    move/from16 v1, p2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0x14

    goto :goto_2

    :cond_1
    move/from16 v1, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f;->g()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->s()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    move v6, v1

    .line 10
    :goto_2
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l6;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v5, v10, Lcom/google/android/gms/measurement/internal/l6;->j:I

    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/f;->m(II)Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/l6;->i:Lcom/google/android/gms/measurement/internal/f;

    .line 11
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/f;->i(Lcom/google/android/gms/measurement/internal/f;)Z

    move-result v5

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/l6;->i:Lcom/google/android/gms/measurement/internal/f;

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v8, 0x1

    :cond_4
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/l6;->i:Lcom/google/android/gms/measurement/internal/f;

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/f;->l(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l6;->i:Lcom/google/android/gms/measurement/internal/f;

    iput v6, v10, Lcom/google/android/gms/measurement/internal/l6;->j:I

    move v9, v8

    move v8, v5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 15
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_6

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Ignoring lower-priority consent settings, proposed settings"

    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l6;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v11

    if-nez v8, :cond_9

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x28

    if-eq v6, v1, :cond_7

    if-ne v6, v4, :cond_8

    goto :goto_4

    :cond_7
    move v4, v6

    :goto_4
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v8

    new-instance v13, Lcom/google/android/gms/measurement/internal/h6;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-wide v5, v11

    move v7, v9

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/h6;-><init>(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;IJZ)V

    .line 24
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/g4;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v8

    new-instance v13, Lcom/google/android/gms/measurement/internal/i6;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move v4, v6

    move-wide v5, v11

    move v7, v9

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/i6;-><init>(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;IJZ)V

    .line 27
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v13

    new-instance v14, Lcom/google/android/gms/measurement/internal/g6;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v4, p3

    move-wide v7, v11

    .line 30
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/g6;-><init>(Lcom/google/android/gms/measurement/internal/l6;Lcom/google/android/gms/measurement/internal/f;JIJZ)V

    .line 31
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/g4;->s(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    return-void
.end method

.method final P(Lcom/google/android/gms/measurement/internal/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z7;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->m()Z

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/j4;->l(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    .line 12
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/l6;->K(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/l6;->T(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method final R(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/h9;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/l6;->S(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method protected final S(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "null reference"

    .line 2
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/a3;->u()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lcom/google/android/gms/measurement/internal/l6;->f:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_3

    iput-boolean v5, v7, Lcom/google/android/gms/measurement/internal/l6;->f:Z

    :try_start_0
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->M()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-array v1, v5, [Ljava/lang/Class;

    .line 17
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v15

    const-string v2, "initialize"

    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v15

    .line 20
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 24
    :catch_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 27
    :cond_3
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->d0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v14, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_cmp"

    .line 30
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 31
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    .line 33
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v16

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    const/4 v14, 0x1

    move-wide/from16 v5, v16

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_4
    const/4 v14, 0x1

    :goto_3
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    if-eqz p6, :cond_5

    .line 38
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/h9;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r3;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/h9;->u(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-eqz p8, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    const-string v1, "_iap"

    .line 43
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/h9;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_6

    goto :goto_4

    .line 45
    :cond_6
    sget-object v3, Lcom/google/android/gms/measurement/internal/g5;->a:[Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/g5;->b:[Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2, v3, v5, v9}, Lcom/google/android/gms/measurement/internal/h9;->i0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v4, 0xd

    goto :goto_4

    :cond_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    .line 48
    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/measurement/internal/h9;->j0(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->p()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 53
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1, v9, v0, v14}, Lcom/google/android/gms/measurement/internal/h9;->p(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    :cond_9
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const/4 v3, 0x0

    const-string v5, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    move/from16 p7, v15

    .line 58
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 59
    :cond_a
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/z6;->r(Z)Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v1

    const-string v6, "_sc"

    if-eqz v1, :cond_b

    .line 63
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iput-boolean v14, v1, Lcom/google/android/gms/measurement/internal/r6;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-eqz p8, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 64
    :goto_5
    invoke-static {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/z6;->w(Lcom/google/android/gms/measurement/internal/r6;Landroid/os/Bundle;Z)V

    const-string v1, "am"

    .line 65
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 66
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/h9;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz p6, :cond_e

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    if-eqz v2, :cond_e

    if-nez v1, :cond_e

    if-eqz v5, :cond_d

    const/4 v13, 0x1

    goto :goto_6

    .line 67
    :cond_d
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/d3;->r(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 74
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    .line 75
    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/k9;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/k9;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_e
    move v13, v5

    .line 78
    :goto_6
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->p()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/h9;->k0(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->p()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/d3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 86
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    .line 89
    invoke-virtual {v2, v9, v0, v14}, Lcom/google/android/gms/measurement/internal/h9;->p(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_f

    .line 90
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    :cond_f
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const-string v4, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v15

    .line 92
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_10
    const-string v0, "_o"

    const-string v5, "_sn"

    const-string v4, "_si"

    filled-new-array {v0, v5, v6, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 94
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object v14, v4

    move-object/from16 v4, p5

    move-object v12, v5

    move-object/from16 v5, v16

    move-object v15, v6

    move/from16 v6, p8

    .line 96
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/h9;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 98
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 99
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    :cond_11
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z6;->r(Z)Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v1

    const-string v12, "_ae"

    if-eqz v1, :cond_12

    .line 106
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/m8;->d:Lcom/google/android/gms/measurement/internal/o8;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    iget-wide v14, v1, Lcom/google/android/gms/measurement/internal/m8;->b:J

    sub-long v14, v2, v14

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/m8;->b:J

    const-wide/16 v1, 0x0

    cmp-long v3, v14, v1

    if-lez v3, :cond_12

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v5, v14, v15}, Lcom/google/android/gms/measurement/internal/h9;->O(Landroid/os/Bundle;J)V

    .line 112
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzll;->zzb()Z

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->o0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v14, 0x0

    .line 114
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "auto"

    .line 115
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_16

    const-string v1, "_ssr"

    .line 116
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    .line 118
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/google/android/gms/common/util/m;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v2, v14

    goto :goto_7

    :cond_13
    if-eqz v2, :cond_14

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_14
    :goto_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    .line 123
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/h9;->F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 125
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    goto :goto_8

    .line 126
    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_16
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 132
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 134
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_17
    :goto_8
    new-instance v15, Ljava/util/ArrayList;

    .line 136
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h9;->d0()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 141
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v3;->t:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_18

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/v3;->v(J)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v3;->v:Lcom/google/android/gms/measurement/internal/q3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q3;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v18

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object/from16 v1, p0

    move-object v14, v5

    move-wide/from16 v5, v18

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 154
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 157
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/l6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_9

    :cond_18
    move-object v14, v5

    :goto_9
    const-string v1, "extend_session"

    const-wide/16 v2, 0x0

    .line 158
    invoke-virtual {v14, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_19

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/n8;

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v1, v10, v11, v2}, Lcom/google/android/gms/measurement/internal/n8;->b(JZ)V

    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 166
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1d

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 167
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    .line 168
    invoke-virtual {v14, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_1a

    move-object/from16 p5, v1

    const/4 v6, 0x1

    new-array v1, v6, [Landroid/os/Bundle;

    .line 170
    check-cast v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    goto :goto_b

    :cond_1a
    move-object/from16 p5, v1

    .line 171
    instance-of v1, v5, [Landroid/os/Parcelable;

    if-eqz v1, :cond_1b

    .line 172
    check-cast v5, [Landroid/os/Parcelable;

    array-length v1, v5

    const-class v6, [Landroid/os/Bundle;

    .line 173
    invoke-static {v5, v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    goto :goto_b

    .line 174
    :cond_1b
    instance-of v1, v5, Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 175
    check-cast v5, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_1e

    .line 177
    invoke-virtual {v14, v4, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_c

    :cond_1d
    move-object/from16 p5, v1

    :cond_1e
    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p5

    goto :goto_a

    :cond_1f
    const/4 v14, 0x0

    .line 178
    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_23

    .line 179
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v14, :cond_20

    const-string v2, "_ep"

    goto :goto_e

    :cond_20
    move-object v2, v9

    .line 180
    :goto_e
    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_21

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 181
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v3

    .line 182
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/h9;->H(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_21
    move-object v5, v1

    .line 183
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    move-object v1, v6

    move-object/from16 v4, p1

    move-object/from16 p6, v0

    move-object v8, v5

    move-object v0, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 184
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v1

    move-object/from16 v5, p9

    .line 185
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/z7;->K(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    if-nez v13, :cond_22

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/l6;->e:Ljava/util/Set;

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/k5;

    new-instance v4, Landroid/os/Bundle;

    .line 187
    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 188
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/k5;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_f

    :cond_22
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v0, p6

    goto :goto_d

    :cond_23
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z6;->r(Z)Lcom/google/android/gms/measurement/internal/r6;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 192
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    const/4 v3, 0x1

    .line 196
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/m8;->d(ZZJ)Z

    :cond_24
    return-void

    .line 197
    :cond_25
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    move-object v10, p0

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->u0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "screen_view"

    move-object v2, p2

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/h9;->F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->O()Lcom/google/android/gms/measurement/internal/z6;

    move-result-object v0

    move-wide/from16 v3, p6

    .line 7
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/z6;->t(Landroid/os/Bundle;J)V

    return-void

    :cond_3
    move-object v2, p2

    :goto_2
    move-wide/from16 v3, p6

    const/4 v0, 0x1

    if-eqz p5, :cond_5

    .line 8
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    if-eqz v6, :cond_5

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/h9;->E(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    xor-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    .line 10
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/l6;->U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method protected final U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 10
    check-cast v2, [Landroid/os/Parcelable;

    .line 11
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 12
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 13
    new-instance v4, Landroid/os/Bundle;

    .line 14
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    .line 20
    new-instance v4, Landroid/os/Bundle;

    .line 21
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v11, p0

    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/measurement/internal/r5;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 24
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    const-string v2, "auto"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/l6;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v3

    .line 2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/h9;->l0(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    goto :goto_2

    .line 3
    :cond_1
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v7

    const-string v8, "user property"

    .line 5
    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/measurement/internal/h9;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    const/4 v11, 0x6

    goto :goto_2

    .line 6
    :cond_2
    sget-object v9, Lcom/google/android/gms/measurement/internal/i5;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 7
    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/google/android/gms/measurement/internal/h9;->i0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v3, 0xf

    const/16 v11, 0xf

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    .line 9
    invoke-virtual {v7, v8, v5, v2}, Lcom/google/android/gms/measurement/internal/h9;->j0(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v3, 0x1

    if-eqz v11, :cond_6

    .line 10
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    .line 13
    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/h9;->p(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v8

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 16
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/measurement/internal/h9;->w(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v1

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    .line 21
    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/h9;->p(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    .line 22
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 23
    :cond_8
    :goto_4
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    :goto_5
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v8

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/l6;->p:Lcom/google/android/gms/measurement/internal/g9;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 26
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/h9;->z(Lcom/google/android/gms/measurement/internal/g9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/h9;->x(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/l6;->n(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/l6;->n(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method protected final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final n(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/s5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_npa"

    if-eqz v0, :cond_3

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p2, 0x1

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "false"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v2, 0x1

    if-eq p2, p3, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    move-wide p2, v2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p2

    .line 9
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/v3;->r:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const-string v0, "true"

    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/v3;->r:Lcom/google/android/gms/measurement/internal/u3;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    :goto_1
    move-object v6, p3

    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, p2

    move-object v6, p3

    .line 13
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->p()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 18
    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkg;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z7;->Q(Lcom/google/android/gms/measurement/internal/zzkg;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/t5;

    .line 3
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/t5;-><init>(Lcom/google/android/gms/measurement/internal/l6;J)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method final s(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o8;->e:Lcom/google/android/gms/measurement/internal/m8;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m8;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/v3;->j:Lcom/google/android/gms/measurement/internal/s3;

    .line 10
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlx;->zzb()Z

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    .line 16
    sget-object v2, Lcom/google/android/gms/measurement/internal/v2;->p0:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/v3;->t:Lcom/google/android/gms/measurement/internal/s3;

    .line 17
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    :cond_1
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->x()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 20
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/v3;->t(Z)V

    :cond_2
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/v3;->z:Lcom/google/android/gms/measurement/internal/u3;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/v3;->A:Lcom/google/android/gms/measurement/internal/s3;

    .line 22
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/r3;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z7;->R()V

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlx;->zzb()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n8;->a()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/l6;->o:Z

    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->c0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->zzas()Lcom/google/android/gms/measurement/internal/u9;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/n5;

    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/l6;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->U()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/l6;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    .line 18
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->Q()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->Q()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 29
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 31
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/l6;->Q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final u(Lcom/google/android/gms/measurement/internal/j5;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z2;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->k(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l6;->d:Lcom/google/android/gms/measurement/internal/j5;

    return-void
.end method

.method public final v(Lcom/google/android/gms/measurement/internal/k5;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w(Lcom/google/android/gms/measurement/internal/k5;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l6;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    const/16 p1, 0x19

    return p1
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->a()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/l6;->z(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    const-string v2, "null reference"

    .line 2
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 5
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v4

    const-string v5, "Package name should be null when calling setConditionalUserProperty"

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 10
    invoke-static {v3, p1, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 11
    invoke-static {v3, p1, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 12
    invoke-static {v3, v5, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    const-string v7, "value"

    .line 13
    invoke-static {v3, v7, v6, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trigger_event_name"

    .line 14
    invoke-static {v3, v6, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "trigger_timeout"

    .line 16
    invoke-static {v3, v9, v0, v8}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    .line 17
    invoke-static {v3, v10, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "timed_out_event_params"

    .line 18
    invoke-static {v3, v11, v10, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    .line 19
    invoke-static {v3, v10, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "triggered_event_params"

    .line 20
    invoke-static {v3, v11, v10, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    .line 21
    invoke-static {v3, v10, v0, v8}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expired_event_name"

    .line 22
    invoke-static {v3, v0, v1, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/os/Bundle;

    const-string v1, "expired_event_params"

    .line 23
    invoke-static {v3, v1, v0, v4}, Landroidx/core/app/b;->U0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 28
    invoke-virtual {v3, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/h9;->l0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p3

    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/h9;->w(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p3

    .line 36
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/h9;->x(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p3

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    .line 41
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_1
    invoke-static {v3, p3}, Landroidx/core/app/b;->T0(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 44
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    cmp-long v0, p2, v4

    if-gtz v0, :cond_2

    cmp-long v0, p2, v1

    if-ltz v0, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    .line 53
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    cmp-long v0, p2, v4

    if-gtz v0, :cond_5

    cmp-long v0, p2, v1

    if-gez v0, :cond_4

    goto :goto_1

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/u5;

    .line 58
    invoke-direct {p2, p0, v3}, Lcom/google/android/gms/measurement/internal/u5;-><init>(Lcom/google/android/gms/measurement/internal/l6;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void

    .line 60
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    .line 66
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 68
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p3

    .line 69
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    .line 72
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 73
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 75
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/j4;->F()Lcom/google/android/gms/measurement/internal/d3;

    move-result-object p3

    .line 76
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/d3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 77
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
