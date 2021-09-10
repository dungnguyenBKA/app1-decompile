.class final synthetic Lxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:Lcv;

.field private final b:Lit;

.field private final c:Let;


# direct methods
.method private constructor <init>(Lcv;Lit;Let;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxu;->a:Lcv;

    iput-object p2, p0, Lxu;->b:Lit;

    iput-object p3, p0, Lxu;->c:Let;

    return-void
.end method

.method public static a(Lcv;Lit;Let;)Lcv$b;
    .locals 1

    new-instance v0, Lxu;

    invoke-direct {v0, p0, p1, p2}, Lxu;-><init>(Lcv;Lit;Let;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lxu;->a:Lcv;

    iget-object v1, p0, Lxu;->b:Lit;

    iget-object v2, p0, Lxu;->c:Let;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lcv;->j0(Lcv;Lit;Let;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
