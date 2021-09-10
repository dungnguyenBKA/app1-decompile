.class final Lcom/android/billingclient/api/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/l;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/r0;->b:Lcom/android/billingclient/api/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/r0;->b:Lcom/android/billingclient/api/l;

    sget-object v1, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    check-cast v0, Lcom/android/billingclient/api/zzah;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/zzah;->g(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
