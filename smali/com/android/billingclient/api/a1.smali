.class final Lcom/android/billingclient/api/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:I

.field private final synthetic c:Lcom/android/billingclient/api/i;

.field private final synthetic d:Lcom/android/billingclient/api/g;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/android/billingclient/api/i;Lcom/android/billingclient/api/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/a1;->b:I

    iput-object p2, p0, Lcom/android/billingclient/api/a1;->c:Lcom/android/billingclient/api/i;

    iput-object p3, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/g;

    iput-object p4, p0, Lcom/android/billingclient/api/a1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/a1;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error consuming purchase with token. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/a1;->c:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/g;

    iget-object v2, p0, Lcom/android/billingclient/api/a1;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/i;->f(Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    return-void
.end method
