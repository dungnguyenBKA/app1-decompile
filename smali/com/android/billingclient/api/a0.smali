.class final Lcom/android/billingclient/api/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/android/billingclient/api/g;

.field static final b:Lcom/android/billingclient/api/g;

.field static final c:Lcom/android/billingclient/api/g;

.field static final d:Lcom/android/billingclient/api/g;

.field static final e:Lcom/android/billingclient/api/g;

.field static final f:Lcom/android/billingclient/api/g;

.field static final g:Lcom/android/billingclient/api/g;

.field static final h:Lcom/android/billingclient/api/g;

.field static final i:Lcom/android/billingclient/api/g;

.field static final j:Lcom/android/billingclient/api/g;

.field static final k:Lcom/android/billingclient/api/g;

.field static final l:Lcom/android/billingclient/api/g;

.field static final m:Lcom/android/billingclient/api/g;

.field static final n:Lcom/android/billingclient/api/g;

.field static final o:Lcom/android/billingclient/api/g;

.field static final p:Lcom/android/billingclient/api/g;

.field static final q:Lcom/android/billingclient/api/g;

.field static final r:Lcom/android/billingclient/api/g;

.field static final s:Lcom/android/billingclient/api/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "Google Play In-app Billing API version is less than 3"

    .line 1
    invoke-static {v0, v1}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 2
    sput-object v1, Lcom/android/billingclient/api/a0;->a:Lcom/android/billingclient/api/g;

    const-string v1, "Google Play In-app Billing API version is less than 9"

    .line 3
    invoke-static {v0, v1}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 4
    sput-object v1, Lcom/android/billingclient/api/a0;->b:Lcom/android/billingclient/api/g;

    const-string v1, "Billing service unavailable on device."

    .line 5
    invoke-static {v0, v1}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 6
    sput-object v1, Lcom/android/billingclient/api/a0;->c:Lcom/android/billingclient/api/g;

    const/4 v1, 0x5

    const-string v2, "Client is already in the process of connecting to billing service."

    .line 7
    invoke-static {v1, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 8
    sput-object v2, Lcom/android/billingclient/api/a0;->d:Lcom/android/billingclient/api/g;

    const-string v2, "Play Store version installed does not support cross selling products."

    .line 9
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/billingclient/api/a0;->e:Lcom/android/billingclient/api/g;

    const-string v0, "The list of SKUs can\'t be empty."

    .line 11
    invoke-static {v1, v0}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/g;

    const-string v0, "SKU type can\'t be empty."

    .line 13
    invoke-static {v1, v0}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/g;

    const/4 v0, -0x2

    const-string v2, "Client does not support extra params."

    .line 15
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 16
    sput-object v2, Lcom/android/billingclient/api/a0;->h:Lcom/android/billingclient/api/g;

    const-string v2, "Client does not support the feature."

    .line 17
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 18
    sput-object v2, Lcom/android/billingclient/api/a0;->i:Lcom/android/billingclient/api/g;

    const-string v2, "Client does not support get purchase history."

    .line 19
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 20
    sput-object v2, Lcom/android/billingclient/api/a0;->j:Lcom/android/billingclient/api/g;

    const-string v2, "Invalid purchase token."

    .line 21
    invoke-static {v1, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 22
    sput-object v2, Lcom/android/billingclient/api/a0;->k:Lcom/android/billingclient/api/g;

    const/4 v2, 0x6

    const-string v3, "An internal error occurred."

    .line 23
    invoke-static {v2, v3}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 24
    sput-object v2, Lcom/android/billingclient/api/a0;->l:Lcom/android/billingclient/api/g;

    .line 25
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v2

    const/4 v3, 0x4

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "Item is unavailable for purchase."

    .line 27
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 28
    invoke-virtual {v2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 29
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "SKU can\'t be null."

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 32
    invoke-virtual {v2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 33
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    const-string v3, "SKU type can\'t be null."

    .line 35
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 36
    invoke-virtual {v2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 37
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v2

    sput-object v2, Lcom/android/billingclient/api/a0;->m:Lcom/android/billingclient/api/g;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    .line 38
    invoke-static {v2, v3}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 39
    sput-object v2, Lcom/android/billingclient/api/a0;->n:Lcom/android/billingclient/api/g;

    const/4 v2, -0x3

    const-string v3, "Timeout communicating with service."

    .line 40
    invoke-static {v2, v3}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 41
    sput-object v2, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    const-string v2, "Client doesn\'t support subscriptions."

    .line 42
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 43
    sput-object v2, Lcom/android/billingclient/api/a0;->p:Lcom/android/billingclient/api/g;

    const-string v2, "Client doesn\'t support subscriptions update."

    .line 44
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v2

    .line 45
    sput-object v2, Lcom/android/billingclient/api/a0;->q:Lcom/android/billingclient/api/g;

    const-string v2, "Client doesn\'t support multi-item purchases."

    .line 46
    invoke-static {v0, v2}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/billingclient/api/a0;->r:Lcom/android/billingclient/api/g;

    const-string v0, "Unknown feature"

    .line 48
    invoke-static {v1, v0}, Lic;->y(ILjava/lang/String;)Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/billingclient/api/a0;->s:Lcom/android/billingclient/api/g;

    return-void
.end method
