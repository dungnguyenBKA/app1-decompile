.class Lcom/android/billingclient/api/d;
.super Lcom/android/billingclient/api/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/d$b;,
        Lcom/android/billingclient/api/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/android/billingclient/api/h0;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/play_billing/zzc;

.field private h:Lcom/android/billingclient/api/d$a;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lcom/android/billingclient/api/m;)V
    .locals 4

    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "3.0.1"

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/android/billingclient/api/c;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/billingclient/api/d;->a:I

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/billingclient/api/d;->c:Landroid/os/Handler;

    .line 7
    iput v1, p0, Lcom/android/billingclient/api/d;->k:I

    .line 8
    iput-object v0, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 10
    new-instance v1, Lcom/android/billingclient/api/h0;

    invoke-direct {v1, v0, p3}, Lcom/android/billingclient/api/h0;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/m;)V

    iput-object v1, p0, Lcom/android/billingclient/api/d;->d:Lcom/android/billingclient/api/h0;

    .line 11
    iput-object p2, p0, Lcom/android/billingclient/api/d;->e:Landroid/content/Context;

    .line 12
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->s:Z

    return-void
.end method

.method private final A(Ljava/lang/String;)Lcom/android/billingclient/api/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/billingclient/api/y0;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/y0;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "BillingClient"

    const-string v0, "Exception while checking if billing is supported; try to reconnect"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    return-object p1
.end method

.method static synthetic B(Lcom/android/billingclient/api/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->r:Z

    return p1
.end method

.method static synthetic D(Lcom/android/billingclient/api/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/d;->k:I

    return p0
.end method

.method private final E()Lcom/android/billingclient/api/g;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/a0;->l:Lcom/android/billingclient/api/g;

    return-object v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    return-object v0
.end method

.method static synthetic F(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->q:Z

    return p1
.end method

.method static synthetic G(Lcom/android/billingclient/api/d;)Lcom/android/billingclient/api/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/d;->E()Lcom/android/billingclient/api/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic H(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->p:Z

    return p1
.end method

.method static synthetic I(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->o:Z

    return p1
.end method

.method static synthetic J(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->n:Z

    return p1
.end method

.method static synthetic K(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->m:Z

    return p1
.end method

.method static synthetic L(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->l:Z

    return p1
.end method

.method static synthetic k(Lcom/android/billingclient/api/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/d;->a:I

    return p1
.end method

.method static synthetic l(Lcom/android/billingclient/api/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method private final m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/d;->d:Lcom/android/billingclient/api/h0;

    invoke-virtual {v0}, Lcom/android/billingclient/api/h0;->c()Lcom/android/billingclient/api/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/m;->c(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1
.end method

.method static n(Lcom/android/billingclient/api/d;Ljava/lang/String;)Lcom/android/billingclient/api/j$a;
    .locals 14

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Querying owned items, item type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-boolean v2, p0, Lcom/android/billingclient/api/d;->n:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/d;->s:Z

    iget-object v4, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    .line 6
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/billingclient/api/d;->n:Z

    if-eqz v4, :cond_2

    .line 7
    iget-object v5, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v6, 0x9

    iget-object v4, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 8
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    .line 9
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 11
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {v4, v5, v6, p1, v9}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v5, "getPurchase()"

    .line 13
    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/c0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v5

    .line 14
    sget-object v6, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    if-eq v5, v6, :cond_3

    .line 15
    new-instance p0, Lcom/android/billingclient/api/j$a;

    invoke-direct {p0, v5, v3}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto/16 :goto_5

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    .line 16
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 17
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 18
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    .line 19
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 20
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 21
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Sku is owned: "

    .line 23
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/j;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    invoke-virtual {v11}, Lcom/android/billingclient/api/j;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "BUG: empty/null token!"

    .line 26
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_5
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Got an exception trying to decode the purchase: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p0, Lcom/android/billingclient/api/j$a;

    sget-object p1, Lcom/android/billingclient/api/a0;->l:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v3}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_5

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 30
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Continuation token: "

    .line 31
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    new-instance p0, Lcom/android/billingclient/api/j$a;

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_5

    :catch_1
    move-exception p0

    .line 34
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Got exception trying to get purchases: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; try to reconnect"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p0, Lcom/android/billingclient/api/j$a;

    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v3}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :goto_5
    return-object p0
.end method

.method static synthetic p(Lcom/android/billingclient/api/d;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    return-object p1
.end method

.method static synthetic q(Lcom/android/billingclient/api/d;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2

    const-wide/16 v0, 0x7530

    .line 1
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private final r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-long p2, p2

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/d;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/play_billing/zza;->zza:I

    new-instance v1, Lcom/android/billingclient/api/u0;

    invoke-direct {v1}, Lcom/android/billingclient/api/u0;-><init>()V

    .line 4
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/d;->t:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/d;->t:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/w0;

    invoke-direct {v1, p1, p4}, Lcom/android/billingclient/api/w0;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static s(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BillingClient"

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "Consuming purchase with token: "

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v2, p0, Lcom/android/billingclient/api/d;->n:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/billingclient/api/d;->n:Z

    iget-object v6, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Lcom/android/billingclient/api/h;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-interface {v2, v3, v4, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "RESPONSE_CODE"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string p1, ""

    .line 14
    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 17
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object p1

    if-nez v2, :cond_2

    .line 18
    new-instance v0, Lcom/android/billingclient/api/x0;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/billingclient/api/x0;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/d;->u(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 19
    :cond_2
    new-instance v0, Lcom/android/billingclient/api/a1;

    invoke-direct {v0, v2, p2, p1, v1}, Lcom/android/billingclient/api/a1;-><init>(ILcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/d;->u(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Lcom/android/billingclient/api/z0;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/billingclient/api/z0;-><init>(Ljava/lang/Exception;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/d;->u(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method static synthetic t(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/d;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final u(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic v(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->j:Z

    return p1
.end method

.method static synthetic w(Lcom/android/billingclient/api/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/d;->k:I

    return p1
.end method

.method static x(Lcom/android/billingclient/api/d;Ljava/lang/String;)Lcom/android/billingclient/api/d$b;
    .locals 14

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Querying purchase history, item type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-boolean v2, p0, Lcom/android/billingclient/api/d;->n:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/d;->s:Z

    iget-object v4, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    .line 6
    :cond_1
    iget-boolean v4, p0, Lcom/android/billingclient/api/d;->l:Z

    if-nez v4, :cond_2

    const-string p0, "getPurchaseHistory is not supported on current device"

    .line 7
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Lcom/android/billingclient/api/d$b;

    sget-object p1, Lcom/android/billingclient/api/a0;->j:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v3}, Lcom/android/billingclient/api/d$b;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto/16 :goto_4

    .line 9
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v6, 0x6

    iget-object v4, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    .line 11
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "getPurchaseHistory()"

    .line 12
    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/c0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v5

    .line 13
    sget-object v6, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    if-eq v5, v6, :cond_3

    .line 14
    new-instance p0, Lcom/android/billingclient/api/d$b;

    invoke-direct {p0, v5, v3}, Lcom/android/billingclient/api/d$b;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto/16 :goto_4

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    .line 15
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 16
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 17
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    .line 18
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 19
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 20
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 21
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Purchase record found for sku : "

    .line 22
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/k;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    invoke-virtual {v11}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "BUG: empty/null token!"

    .line 25
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_5
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Got an exception trying to decode the purchase: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/android/billingclient/api/d$b;

    sget-object p1, Lcom/android/billingclient/api/a0;->l:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v3}, Lcom/android/billingclient/api/d$b;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_4

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 29
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Continuation token: "

    .line 30
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_3
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    new-instance p0, Lcom/android/billingclient/api/d$b;

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/d$b;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 33
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Got exception trying to get purchase history: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; try to reconnect"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p0, Lcom/android/billingclient/api/d$b;

    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-direct {p0, p1, v3}, Lcom/android/billingclient/api/d$b;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :goto_4
    return-object p0
.end method

.method static synthetic y(Lcom/android/billingclient/api/d;)Lcom/google/android/gms/internal/play_billing/zzc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    return-object p0
.end method

.method static synthetic z(Lcom/android/billingclient/api/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/d;->i:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/android/billingclient/api/a0;->k:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/d;->n:Z

    if-nez v0, :cond_2

    .line 7
    sget-object p1, Lcom/android/billingclient/api/a0;->b:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Lcom/android/billingclient/api/q0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/q0;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    const-wide/16 v1, 0x7530

    new-instance p1, Lcom/android/billingclient/api/v0;

    invoke-direct {p1, p2}, Lcom/android/billingclient/api/v0;-><init>(Lcom/android/billingclient/api/b;)V

    .line 9
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/d;->E()Lcom/android/billingclient/api/g;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    :cond_3
    return-void
.end method

.method public b(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/i;->f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/n0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/n0;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V

    const-wide/16 v1, 0x7530

    new-instance v3, Lcom/android/billingclient/api/m0;

    invoke-direct {v3, p2, p1}, Lcom/android/billingclient/api/m0;-><init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/h;)V

    .line 6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/billingclient/api/d;->E()Lcom/android/billingclient/api/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/i;->f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/android/billingclient/api/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "subscriptions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "subscriptionsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "inAppItemsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "priceChangeConfirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "ddd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "ccc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "bbb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "aaa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "subscriptionsUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "Unsupported feature: "

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "BillingClient"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/android/billingclient/api/a0;->s:Lcom/android/billingclient/api/g;

    return-object p1

    .line 6
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->i:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_b
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    :pswitch_1
    const-string p1, "subs"

    .line 7
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/d;->A(Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "inapp"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/d;->A(Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->m:Z

    if-eqz p1, :cond_c

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_c
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    .line 10
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->r:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_d
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    .line 11
    :pswitch_5
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->p:Z

    if-eqz p1, :cond_e

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_e
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    .line 12
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->q:Z

    if-eqz p1, :cond_f

    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    :cond_f
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    .line 13
    :pswitch_7
    iget-boolean p1, p0, Lcom/android/billingclient/api/d;->j:Z

    if-eqz p1, :cond_10

    .line 14
    sget-object p1, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object p1

    .line 15
    :cond_10
    sget-object p1, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_8
        0x17841 -> :sswitch_7
        0x17c22 -> :sswitch_6
        0x18003 -> :sswitch_5
        0x183e4 -> :sswitch_4
        0xc5ff92e -> :sswitch_3
        0x116ae57f -> :sswitch_2
        0x48aff111 -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/d;->h:Lcom/android/billingclient/api/d$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v9, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    const-string v10, "; try to reconnect"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/f;->h()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/n;

    .line 5
    invoke-virtual {v3}, Lcom/android/billingclient/api/n;->d()Ljava/lang/String;

    move-result-object v4

    const-string v2, "subs"

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "BillingClient"

    if-eqz v2, :cond_1

    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->i:Z

    if-nez v2, :cond_1

    const-string v0, "Current client doesn\'t support subscriptions."

    .line 7
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/android/billingclient/api/a0;->p:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 9
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 10
    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->j:Z

    if-nez v12, :cond_3

    const-string v0, "Current client doesn\'t support subscriptions update."

    .line 11
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/android/billingclient/api/a0;->q:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 13
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/f;->o()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->l:Z

    if-nez v12, :cond_4

    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 14
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/android/billingclient/api/a0;->h:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v6, :cond_5

    iget-boolean v6, v7, Lcom/android/billingclient/api/d;->r:Z

    if-nez v6, :cond_5

    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 17
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/android/billingclient/api/a0;->r:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :cond_5
    const-string v6, ""

    const/4 v12, 0x0

    move-object v13, v6

    .line 19
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_7

    .line 20
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v16, v15

    invoke-static {v15, v13, v14}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v12, v14, :cond_6

    .line 22
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    const/16 v12, 0x29

    .line 23
    invoke-static {v13, v12}, Lic;->m(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Constructing buy intent for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", item type: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->l:Z

    if-eqz v12, :cond_15

    .line 25
    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->n:Z

    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->s:Z

    iget-object v14, v7, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 26
    invoke-static {v5, v2, v12, v14}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Lcom/android/billingclient/api/f;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 27
    invoke-virtual {v3}, Lcom/android/billingclient/api/n;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 28
    invoke-virtual {v3}, Lcom/android/billingclient/api/n;->f()Ljava/lang/String;

    move-result-object v2

    const-string v14, "skuDetailsToken"

    .line 29
    invoke-virtual {v12, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v6, v6, 0x1

    check-cast v16, Lcom/android/billingclient/api/n;

    .line 33
    invoke-virtual/range {v16 .. v16}, Lcom/android/billingclient/api/n;->f()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    move/from16 v19, v6

    .line 34
    invoke-virtual/range {v16 .. v16}, Lcom/android/billingclient/api/n;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 v19, v6

    .line 35
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v15

    .line 36
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "offer_id_token"

    .line 37
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-object/from16 v6, v18

    .line 38
    :goto_4
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    or-int v17, v17, v6

    move/from16 v15, v16

    move/from16 v6, v19

    goto :goto_2

    .line 40
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "skuDetailsTokens"

    .line 41
    invoke-virtual {v12, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    if-eqz v17, :cond_d

    .line 42
    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->r:Z

    if-nez v2, :cond_c

    .line 43
    sget-object v0, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :cond_c
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 44
    invoke-virtual {v12, v2, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    :cond_d
    invoke-virtual {v3}, Lcom/android/billingclient/api/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 46
    invoke-virtual {v3}, Lcom/android/billingclient/api/n;->e()Ljava/lang/String;

    move-result-object v2

    const-string v6, "skuPackageName"

    .line 47
    invoke-virtual {v12, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v2, 0x0

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "accountName"

    .line 49
    invoke-virtual {v12, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_11

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_10

    .line 53
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/billingclient/api/n;

    invoke-virtual {v14}, Lcom/android/billingclient/api/n;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    const-string v1, "additionalSkus"

    .line 54
    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxyPackage"

    .line 57
    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_1
    iget-object v2, v7, Lcom/android/billingclient/api/d;->e:Landroid/content/Context;

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 60
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    const-string v1, "package not found"

    .line 61
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_12
    :goto_6
    iget-boolean v0, v7, Lcom/android/billingclient/api/d;->n:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x9

    const/16 v2, 0x9

    goto :goto_7

    .line 63
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/f;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x7

    const/4 v2, 0x7

    goto :goto_7

    :cond_14
    const/4 v0, 0x6

    const/4 v2, 0x6

    .line 64
    :goto_7
    new-instance v14, Lcom/android/billingclient/api/c1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/c1;-><init>(Lcom/android/billingclient/api/d;ILcom/android/billingclient/api/n;Ljava/lang/String;Lcom/android/billingclient/api/f;Landroid/os/Bundle;)V

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    .line 65
    invoke-direct {v7, v14, v0, v1, v2}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_8

    :cond_15
    const-wide/16 v0, 0x1388

    const/4 v6, 0x0

    if-eqz v2, :cond_16

    .line 66
    new-instance v2, Lcom/android/billingclient/api/b1;

    invoke-direct {v2, v7, v5, v3}, Lcom/android/billingclient/api/b1;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/n;)V

    .line 67
    invoke-direct {v7, v2, v0, v1, v6}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_8

    .line 68
    :cond_16
    new-instance v2, Lcom/android/billingclient/api/s;

    invoke-direct {v2, v7, v3, v4}, Lcom/android/billingclient/api/s;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n;Ljava/lang/String;)V

    .line 69
    invoke-direct {v7, v2, v0, v1, v6}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 70
    :goto_8
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_17

    const/16 v0, 0x34

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to buy item, Error response code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 78
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 79
    iget-object v1, v7, Lcom/android/billingclient/api/d;->d:Lcom/android/billingclient/api/h0;

    invoke-virtual {v1}, Lcom/android/billingclient/api/h0;->c()Lcom/android/billingclient/api/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/m;->c(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object v0

    .line 80
    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 82
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    sget-object v0, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    return-object v0

    :catch_2
    const/16 v0, 0x45

    .line 85
    invoke-static {v13, v0}, Lic;->m(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :catch_3
    const/16 v0, 0x44

    .line 88
    invoke-static {v13, v0}, Lic;->m(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->m(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0
.end method

.method public g(Ljava/lang/String;Lcom/android/billingclient/api/l;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    check-cast p2, Lcom/android/billingclient/api/zzah;

    invoke-virtual {p2, p1, v1}, Lcom/android/billingclient/api/zzah;->g(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/p0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/p0;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Lcom/android/billingclient/api/l;)V

    const-wide/16 v2, 0x7530

    new-instance p1, Lcom/android/billingclient/api/r0;

    invoke-direct {p1, p2}, Lcom/android/billingclient/api/r0;-><init>(Lcom/android/billingclient/api/l;)V

    .line 4
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/billingclient/api/d;->E()Lcom/android/billingclient/api/g;

    move-result-object p1

    .line 6
    check-cast p2, Lcom/android/billingclient/api/zzah;

    invoke-virtual {p2, p1, v1}, Lcom/android/billingclient/api/zzah;->g(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/android/billingclient/api/j$a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/android/billingclient/api/j$a;

    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/android/billingclient/api/j$a;

    sget-object v0, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/r;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/r;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 7
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 8
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/j$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Lcom/android/billingclient/api/j$a;

    sget-object v0, Lcom/android/billingclient/api/a0;->l:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    .line 10
    :catch_1
    new-instance p1, Lcom/android/billingclient/api/j$a;

    sget-object v0, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/j$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1
.end method

.method public i(Lcom/android/billingclient/api/o;Lcom/android/billingclient/api/p;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/o;->a()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/o;->b()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "BillingClient"

    if-eqz v0, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 6
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 8
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    .line 10
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    new-instance v2, Lcom/android/billingclient/api/f0$a;

    invoke-direct {v2, v1}, Lcom/android/billingclient/api/f0$a;-><init>(Lcom/android/billingclient/api/e0;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/f0$a;->a(Ljava/lang/String;)Lcom/android/billingclient/api/f0$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/f0$a;->b()Lcom/android/billingclient/api/f0;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Lcom/android/billingclient/api/u;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/u;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/p;)V

    const-wide/16 v2, 0x7530

    new-instance v0, Lcom/android/billingclient/api/k0;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/k0;-><init>(Lcom/android/billingclient/api/p;)V

    .line 15
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/billingclient/api/d;->r(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/android/billingclient/api/d;->E()Lcom/android/billingclient/api/g;

    move-result-object p1

    .line 17
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public j(Lcom/android/billingclient/api/e;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->d()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->d(Lcom/android/billingclient/api/g;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/android/billingclient/api/a0;->d:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->d(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->d(Lcom/android/billingclient/api/g;)V

    return-void

    .line 9
    :cond_2
    iput v2, p0, Lcom/android/billingclient/api/d;->a:I

    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/d;->d:Lcom/android/billingclient/api/h0;

    invoke-virtual {v0}, Lcom/android/billingclient/api/h0;->b()V

    const-string v0, "Starting in-app billing setup."

    .line 11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/android/billingclient/api/d$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/d$a;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/l0;)V

    iput-object v0, p0, Lcom/android/billingclient/api/d;->h:Lcom/android/billingclient/api/d$a;

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 14
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v4, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 17
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 19
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_5

    .line 20
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 23
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v0, p0, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/d;->h:Lcom/android/billingclient/api/d$a;

    .line 28
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    .line 29
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_5
    :goto_0
    iput v5, p0, Lcom/android/billingclient/api/d;->a:I

    const-string v0, "Billing service unavailable on device."

    .line 33
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/billingclient/api/a0;->c:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->d(Lcom/android/billingclient/api/g;)V

    return-void
.end method

.method final o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/n$a;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/f0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/n$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BillingClient"

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    add-int/lit8 v6, v5, 0x14

    if-le v6, v3, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v6

    .line 3
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p2

    .line 4
    invoke-interface {v9, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/billingclient/api/f0;

    .line 7
    invoke-virtual {v11}, Lcom/android/billingclient/api/f0;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "ITEM_ID_LIST"

    .line 9
    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    iget-object v5, v1, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    const-string v10, "playBillingLibraryVersion"

    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 11
    :try_start_0
    iget-boolean v10, v1, Lcom/android/billingclient/api/d;->o:Z

    if-eqz v10, :cond_2

    .line 12
    iget-object v12, v1, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v13, 0xa

    iget-object v10, v1, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 13
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v10, v1, Lcom/android/billingclient/api/d;->k:I

    iget-boolean v11, v1, Lcom/android/billingclient/api/d;->s:Z

    iget-object v15, v1, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    move-object/from16 v4, p3

    .line 14
    invoke-static {v10, v11, v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zza;->zza(IZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v15, p1

    move-object/from16 v16, v7

    .line 15
    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v12, p1

    goto :goto_3

    :cond_2
    move-object/from16 v4, p3

    .line 16
    iget-object v8, v1, Lcom/android/billingclient/api/d;->g:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v10, 0x3

    iget-object v11, v1, Lcom/android/billingclient/api/d;->f:Landroid/content/Context;

    .line 17
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p1

    .line 18
    invoke-interface {v8, v10, v11, v12, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-string v8, "Item is unavailable for purchase."

    const/4 v10, 0x4

    if-nez v7, :cond_3

    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 19
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/android/billingclient/api/n$a;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    const-string v11, "DETAILS_LIST"

    .line 21
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x6

    if-nez v13, :cond_5

    .line 22
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 23
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    const/16 v5, 0x32

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getSkuDetails() failed. Response code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v2, Lcom/android/billingclient/api/n$a;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_4
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 27
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Lcom/android/billingclient/api/n$a;

    invoke-direct {v2, v14, v4, v0}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 29
    :cond_5
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v0, "querySkuDetailsAsync got null response list"

    .line 30
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/android/billingclient/api/n$a;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_6
    const/4 v8, 0x0

    .line 32
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 33
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 34
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/n;

    invoke-direct {v11, v10}, Lcom/android/billingclient/api/n;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Got sku details: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_0
    const-string v0, "Got a JSON exception trying to decode SkuDetails."

    .line 37
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/android/billingclient/api/n$a;

    const-string v2, "Error trying to decode SkuDetails."

    invoke-direct {v0, v14, v2, v5}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_7
    move v5, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/billingclient/api/n$a;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    invoke-direct {v0, v2, v3, v5}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 41
    :cond_8
    new-instance v2, Lcom/android/billingclient/api/n$a;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Lcom/android/billingclient/api/n$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method
