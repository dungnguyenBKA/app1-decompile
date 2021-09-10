.class final synthetic Lbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:Lcv;

.field private final b:Lit;


# direct methods
.method private constructor <init>(Lcv;Lit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbv;->a:Lcv;

    iput-object p2, p0, Lbv;->b:Lit;

    return-void
.end method

.method public static a(Lcv;Lit;)Lcv$b;
    .locals 1

    new-instance v0, Lbv;

    invoke-direct {v0, p0, p1}, Lbv;-><init>(Lcv;Lit;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbv;->a:Lcv;

    iget-object v1, p0, Lbv;->b:Lit;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lcv;->V(Lcv;Lit;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
