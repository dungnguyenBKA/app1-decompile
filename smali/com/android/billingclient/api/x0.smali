.class final Lcom/android/billingclient/api/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/i;

.field private final synthetic c:Lcom/android/billingclient/api/g;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/x0;->b:Lcom/android/billingclient/api/i;

    iput-object p2, p0, Lcom/android/billingclient/api/x0;->c:Lcom/android/billingclient/api/g;

    iput-object p3, p0, Lcom/android/billingclient/api/x0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Successfully consumed purchase."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/x0;->b:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/x0;->c:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/x0;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
