<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* result/index.twig */
class __TwigTemplate_3e953ca37dd03e681d2758a3562ceb8f extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $this->loadTemplate("layouts/base.twig", "result/index.twig", 1)->display($context);
        echo " ";
        $this->displayBlock('content', $context, $blocks);
    }

    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo " ";
        // line 3
        echo "
<main>
\t<section>
\t\t<h1>uitslag</h1>
\t\t<form method=\"post\" action=\"";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["globals"] ?? null), "urlRoot", [], "any", false, false, false, 7), "html", null, true);
        echo "/result\">
\t\t\t<select name=\"session\">
\t\t\t\t";
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["sessions"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["date"]) {
            echo " ";
            if ((twig_get_attribute($this->env, $this->source, $context["date"], "id", [], "any", false, false, false, 9) == ($context["selected"] ?? null))) {
                // line 10
                echo "\t\t\t\t<option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["date"], "id", [], "any", false, false, false, 10), "html", null, true);
                echo "\" selected>";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["date"], "date", [], "any", false, false, false, 10), "html", null, true);
                echo "</option>
\t\t\t\t";
            } else {
                // line 12
                echo "\t\t\t\t<option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["date"], "id", [], "any", false, false, false, 12), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["date"], "date", [], "any", false, false, false, 12), "html", null, true);
                echo "</option>
\t\t\t\t";
            }
            // line 13
            echo " ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['date'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "\t\t\t</select>
\t\t\t<input type=\"submit\" value=\"Zoek\" />
\t\t</form>
\t</section>
\t<section>
\t\t";
        // line 19
        if (twig_test_empty(($context["scores"] ?? null))) {
            // line 20
            echo "\t\t<span> Er zijn geen resultaten </span>
\t\t";
        } else {
            // line 22
            echo "\t\t<table class=\"table table-striped\">
\t\t\t<thead>
\t\t\t\t<tr>
\t\t\t\t\t<th>Voornaam</th>
\t\t\t\t\t<th>Tussenvoegsel</th>
\t\t\t\t\t<th>Achternaam</th>
\t\t\t\t\t<th>Score</th>
\t\t\t\t\t<th>Datum</th>
\t\t\t\t</tr>
\t\t\t</thead>
\t\t\t<tbody>
\t\t\t\t";
            // line 33
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["scores"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["result"]) {
                // line 34
                echo "\t\t\t\t<tr>
\t\t\t\t\t<td>";
                // line 35
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "first_name", [], "any", false, false, false, 35), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 36
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "insertion", [], "any", false, false, false, 36), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 37
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "last_name", [], "any", false, false, false, 37), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 38
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "value", [], "any", false, false, false, 38), "html", null, true);
                echo "</td>
\t\t\t\t\t<td>";
                // line 39
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["result"], "created_at", [], "any", false, false, false, 39), "html", null, true);
                echo "</td>
\t\t\t\t</tr>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['result'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 42
            echo "\t\t\t</tbody>
\t\t</table>
\t\t";
        }
        // line 45
        echo "\t</section>
</main>
";
    }

    public function getTemplateName()
    {
        return "result/index.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  150 => 45,  145 => 42,  136 => 39,  132 => 38,  128 => 37,  124 => 36,  120 => 35,  117 => 34,  113 => 33,  100 => 22,  96 => 20,  94 => 19,  87 => 14,  81 => 13,  73 => 12,  65 => 10,  59 => 9,  54 => 7,  48 => 3,  38 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "result/index.twig", "C:\\Users\\turki\\Oefenexamen-Bowlingcentrum-medewerker-uitslag\\app\\views\\result\\index.twig");
    }
}
