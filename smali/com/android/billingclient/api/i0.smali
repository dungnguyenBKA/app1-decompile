.class final Lcom/android/billingclient/api/i0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/billingclient/api/m;

.field private b:Z

.field private final synthetic c:Lcom/android/billingclient/api/h0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/h0;Lcom/android/billingclient/api/m;Lcom/android/billingclient/api/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/i0;->c:Lcom/android/billingclient/api/h0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/billingclient/api/i0;->a:Lcom/android/billingclient/api/m;

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/i0;)Lcom/android/billingclient/api/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/i0;->a:Lcom/android/billingclient/api/m;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/i0;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/i0;->c:Lcom/android/billingclient/api/h0;

    invoke-static {v0}, Lcom/android/billingclient/api/h0;->a(Lcom/android/billingclient/api/h0;)Lcom/android/billingclient/api/i0;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/billingclient/api/i0;->b:Z

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/i0;->a:Lcom/android/billingclient/api/m;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/m;->c(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
