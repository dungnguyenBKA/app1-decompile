.class final Lcom/android/billingclient/api/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Ljava/lang/Exception;

.field private final synthetic c:Lcom/android/billingclient/api/i;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Exception;Lcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/z0;->b:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/android/billingclient/api/z0;->c:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/z0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/z0;->b:Ljava/lang/Exception;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error consuming purchase; ex: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/z0;->c:Lcom/android/billingclient/api/i;

    sget-object v1, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/z0;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
