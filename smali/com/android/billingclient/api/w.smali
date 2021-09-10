.class final Lcom/android/billingclient/api/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/d$a;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/w;->b:Lcom/android/billingclient/api/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/w;->b:Lcom/android/billingclient/api/d$a;

    iget-object v0, v0, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->k(Lcom/android/billingclient/api/d;I)I

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/w;->b:Lcom/android/billingclient/api/d$a;

    iget-object v0, v0, Lcom/android/billingclient/api/d$a;->c:Lcom/android/billingclient/api/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->p(Lcom/android/billingclient/api/d;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;

    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/w;->b:Lcom/android/billingclient/api/d$a;

    sget-object v1, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d$a;->b(Lcom/android/billingclient/api/d$a;Lcom/android/billingclient/api/g;)V

    return-void
.end method
